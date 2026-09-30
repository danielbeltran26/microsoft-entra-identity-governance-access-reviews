# M2 - Identity and entitlement baseline

Observation date: 30 September 2026 (Europe/London). All identities and business scenarios in this scope are synthetic.

## Identities

| Account alias | Purpose | Account enabled | Direct P2 assignment |
|---|---|---|---|
| ar-reviewer-01 | Designated reviewer | Yes | Confirmed |
| ar-finance-01 | Justified Finance membership | Yes | Confirmed |
| ar-mover-01 | Obsolete Finance and justified Operations membership | Yes | Confirmed |
| ar-leaver-01 | Disabled identity with residual memberships | No | Confirmed |
| ar-exception-01 | Temporary Finance handover exception | Yes | Confirmed |

All five cloud member accounts have direct P2 licence assignments. The leaver remains disabled. Licensing is independent of the reviewed group memberships. No directory roles were assigned to these accounts during setup.

## Groups and direct memberships

All three groups are cloud security groups, use Assigned membership and are not role assignable. IAM-Admin owns each group. The reviewer is not a member of any of them.

| Account alias | AR-Finance-Access | AR-Operations-Access | AR-Control-Access |
|---|---|---|---|
| ar-finance-01 | Member | Not member | Member |
| ar-mover-01 | Member | Member | Member |
| ar-leaver-01 | Member | Member | Not member |
| ar-exception-01 | Member | Not member | Not member |
| Direct member count | 4 | 2 | 2 |

See the [baseline CSV](../data/m02-membership-baseline.csv) and [evidence register](evidence-register.md). No application or resource permission has been assigned through these groups. Object IDs must be resolved uniquely before the reviews are created; aliases alone are not sufficient for final remediation validation.

## Reviewer readiness

ar-reviewer-01 completed its initial password change, accessed My Access and registered Microsoft Authenticator through Security info. Initial sign-in did not prompt for MFA registration. Effective MFA enforcement and the authentication details of the review session remain to be verified in sign-in logs.

## Existing policy observations

| Policy | Observed inclusion | Observed target/control |
|---|---|---|
| CA004-GRANT-MFA-ManagementSurfaces-AllUsers | GG_CA_Pilot_Workforce | Microsoft Admin Portals and Azure Resource Manager; authentication strength selected |
| CA005-GRANT-MFA-SecurityInfoRegistration-AllUsers | GG_CA_Pilot_Workforce | Register security information; authentication strength selected |
| CA009-SESSION-NoPersistentBrowser-Contractors | GG_IAM_All_Contractors | All resources; one configured condition |

All three policies are enabled. CA004 and CA005 include GG_CA_Pilot_Workforce rather than all tenant users. At M2, the reviewer required an effective-policy assessment. The subsequent scoped CA011 change and sign-in validation are documented in [M3 authentication](m03-authentication-and-administration.md). Existing Conditional Access and authentication-method policies were unchanged during setup.

## Administrative boundary

Setup used IAM-Admin with the existing PIM controls. The M1 baseline records a temporary Global Administrator activation. Subsequent operations require an active supported role, using the least-privileged available assignment. Standing privileged access is outside the project design.
