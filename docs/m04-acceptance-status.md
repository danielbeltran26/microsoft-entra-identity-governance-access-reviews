# M4 - Acceptance status

> Historical milestone observation. EXC-001 was subsequently closed on 1 October 2026. The [M5 final acceptance record](m05-final-acceptance.md) supersedes pending items and pre-closure member sets below.


Observation cutoff: 30 September 2026, 23:48:50 BST. This record distinguishes completed outcomes from remaining acceptance requirements.

| Case | Status | Evidence or remaining action |
|---|---|---|
| Retain Finance access | Verified in portal | Approved decision and retained ar-finance-01 membership |
| Remove obsolete mover membership | Verified in portal | Finance denial, successful application and absence after recovery cleanup; Operations and Control retention observed |
| Remove Finance leaver membership | Verified in portal | Denial, successful application, removal audit target and member list |
| Nonresponse fallback | Verified after early completion | Platform denial, successful application, Operations member list and review audit sequence |
| Scheduled-deadline closure | Not exercised | Original test plan changed to administrator early completion; no scheduled-closure claim |
| Temporary exception | Retention verified; enforcement open | EXC-001 remains assigned until 3 October 2026 at 18:00 Europe/London (17:00 UTC) |
| Control group | Verified | Final Graph comparison after Operations matched both expected members |
| Recovery | Restoration and cleanup verified in portal | Manual audit events and before/after member lists |
| Final object-ID comparison | Passed | Five users resolved; Finance 2, Operations 1 and Control 2 matched at 23:48:50 BST |
| Final handover | Pending | Reconcile final checks and exception handling before closing the project |

## Plan deviation

The M1/M2 acceptance plan originally required reaching the scheduled end with no reviewer response. On 30 September, execution was changed to end Operations early and observe automatic nonresponse enforcement immediately. The observed result satisfies the revised early-completion test. It does not retroactively satisfy the original scheduled-deadline criterion.

## Current and eventual states

Current expected sets are Finance: ar-finance-01 and ar-exception-01; Operations: ar-mover-01; Control: ar-finance-01 and ar-mover-01. After EXC-001 enforcement, Finance should contain only ar-finance-01. The leaver must remain disabled; the reviewer must remain outside all three groups.

EXC-001 is manual. No scheduler or native expiring membership exists. Its future enforcement is not represented as completed. Early exception closure would require a separately recorded owner decision and actual removal evidence; the original approval and expiry must remain in the historical record.

See [remediation results](m04-remediation-results.md), [recovery validation](m04-recovery-validation.md), and [exception handling](../runbooks/exception-handling.md).

## Repeat the read-only check

In Windows PowerShell, reuse the authorized Microsoft.Graph.Authentication session with User.Read.All and Group.Read.All. Run the script from the project root:

```powershell
& .\scripts\Test-ARMembership.ps1
```

The default expects the approved exception to remain in Finance. Use `-ExceptionClosed` only after separately authorized exception removal has actually occurred. The switch changes expected validation data; it performs no removal.

The script resolves each exact display name uniquely, then compares current memberships by object ID, follows pagination, checks assigned cloud security-group configuration and verifies all five account states. It does not compare against a persisted historical object-ID export; the original mapping existed only in the M3 session. Unexpected or duplicate objects cause failure. The observed passing result below closes the current membership validation check.

The script uses the documented [group expansion workaround](https://learn.microsoft.com/en-us/graph/api/group-list-members?view=graph-rest-1.0) to avoid the v1.0 direct-members endpoint's service-principal omission. Requests use [Invoke-MgGraphRequest](https://learn.microsoft.com/en-us/powershell/module/microsoft.graph.authentication/invoke-mggraphrequest?view=graph-powershell-1.0) with GET only. It does not initiate authentication, grant permissions or modify tenant objects.

## Observed final Graph validation

CheckedAtUtc: 2026-09-30T22:48:50.8940170Z. Five users were resolved and all three group member sets matched by object ID.

| Group | Expected count | Actual count | Object-ID set matches |
|---|---:|---:|---|
| AR-Finance-Access | 2 | 2 | True |
| AR-Operations-Access | 1 | 1 | True |
| AR-Control-Access | 2 | 2 | True |

LeaverDisabled: True. ReviewerOutsideProjectGroups: True. ExceptionExpected: True. TenantChanges: False. Account state and group configuration checks passed. The result was transcribed from the executed script output; no additional screenshot was retained.
