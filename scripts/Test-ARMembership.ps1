#requires -Version 5.1
[CmdletBinding()]
param([switch]$ExceptionClosed)
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
# GET requests only; reuses an existing session and does not write files.
if (-not (Get-Command Get-MgContext -ErrorAction SilentlyContinue)) {
    throw 'Load Microsoft.Graph.Authentication and establish an authorized Graph session first.'
}
$Context = Get-MgContext
if ($null -eq $Context) { throw 'No existing Microsoft Graph session.' }
foreach ($Scope in @('User.Read.All','Group.Read.All')) {
    if ($Scope -notin @($Context.Scopes)) { throw "The existing session needs $Scope." }
}
function Get-Collection([string]$Uri) {
    do {
        $Response = Invoke-MgGraphRequest -Method GET -Uri $Uri -OutputType Hashtable
        foreach ($Item in @($Response['value'])) { $Item }
        $Uri = [string]$Response['@odata.nextLink']
    } while (-not [string]::IsNullOrWhiteSpace($Uri))
}
function Get-UniqueObject([string]$Collection, [string]$Name, [string]$Select) {
    $Filter = [Uri]::EscapeDataString("displayName eq '" + $Name.Replace("'", "''") + "'")
    $Uri = 'https://graph.microsoft.com/v1.0/' + $Collection + '?$filter=' + $Filter + '&$select=' + $Select
    $Items = @(Get-Collection $Uri)
    if ($Items.Count -ne 1) { throw "Expected exactly one $Collection object named $Name; found $($Items.Count)." }
    if ([string]::IsNullOrWhiteSpace([string]$Items[0]['id'])) { throw "Missing object ID for $Name." }
    return $Items[0]
}
$Users = @{}
foreach ($Name in @('ar-reviewer-01','ar-finance-01','ar-mover-01','ar-leaver-01','ar-exception-01')) {
    $User = Get-UniqueObject 'users' $Name 'id,displayName,accountEnabled,userType'
    if ($User['userType'] -ne 'Member') { throw "Unexpected user type: $Name" }
    $ExpectedEnabled = $Name -ne 'ar-leaver-01'
    if ($User['accountEnabled'] -ne $ExpectedEnabled) { throw "Unexpected account enabled state: $Name" }
    $Users[$Name] = $User
}
$Finance = @('ar-finance-01','ar-exception-01')
if ($ExceptionClosed) { $Finance = @('ar-finance-01') }
$Expected = [ordered]@{
    'AR-Finance-Access' = $Finance
    'AR-Operations-Access' = @('ar-mover-01')
    'AR-Control-Access' = @('ar-finance-01','ar-mover-01')
}
$Results = @(
    foreach ($Name in $Expected.Keys) {
        $Group = Get-UniqueObject 'groups' $Name 'id,displayName,securityEnabled,mailEnabled,groupTypes,isAssignableToRole,onPremisesSyncEnabled'
        if ($Group['securityEnabled'] -ne $true -or $Group['mailEnabled'] -eq $true -or
            $Group['isAssignableToRole'] -eq $true -or $Group['onPremisesSyncEnabled'] -eq $true -or
            @($Group['groupTypes']).Count -ne 0) { throw "Unexpected group configuration: $Name" }
        # Expand avoids the documented v1.0 /members omission of service principals.
        $Uri = 'https://graph.microsoft.com/v1.0/groups/' + $Group['id'] + '?$select=id&$expand=members($select=id)'
        $Response = Invoke-MgGraphRequest -Method GET -Uri $Uri -OutputType Hashtable
        if (-not $Response.ContainsKey('members')) { throw "No member collection returned for $Name." }
        $Members = @($Response['members'])
        if ($Response['members@odata.nextLink']) { $Members += @(Get-Collection $Response['members@odata.nextLink']) }
        $ActualIds = @($Members | ForEach-Object { [string]$_['id'] } | Sort-Object -Unique)
        $ExpectedIds = @($Expected[$Name] | ForEach-Object { [string]$Users[$_]['id'] } | Sort-Object -Unique)
        $Match = $ActualIds.Count -eq $ExpectedIds.Count -and @($ActualIds | Where-Object { $_ -notin $ExpectedIds }).Count -eq 0
        [pscustomobject]@{ Group = $Name; ExpectedCount = $ExpectedIds.Count; ActualCount = $ActualIds.Count; ObjectIdSetMatches = $Match }
    }
)
$Results | Format-Table -AutoSize
if (@($Results | Where-Object { -not $_.ObjectIdSetMatches }).Count -gt 0) {
    throw 'Membership mismatch. No tenant changes were made.'
}
[pscustomobject]@{
    CheckedAtUtc = [DateTime]::UtcNow.ToString('o')
    UsersResolved = $Users.Count
    GroupsMatched = $Results.Count
    LeaverDisabled = $true
    ReviewerOutsideProjectGroups = $true
    ExceptionExpected = -not [bool]$ExceptionClosed
    TenantChanges = $false
} | Format-List
Write-Host 'PASS: Current direct membership sets and account states match the selected expected state. No tenant changes.' -ForegroundColor Green
