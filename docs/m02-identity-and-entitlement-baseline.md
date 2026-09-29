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

The operator confirmed creation and validation of all five cloud member accounts, followed by successful direct P2 licence assignments. The leaver remains disabled. Licence assignment is independent of the reviewed groups. No directory roles were assigned to these accounts during setup. A total of 14 assigned and 86 available licences was an expected calculation from M1, not a separately retained measured inventory.

## Groups and direct memberships
All three groups are cloud security groups, use Assigned membership and are not role assignable. IAM-Admin was confirmed as owner of each group. The reviewer is not a member of any of them.

| Account alias | AR-Finance-Access | AR-Operations-Access | AR-Control-Access |
|---|---|---|---|
| ar-finance-01 | Member | Not member | Member |
| ar-mover-01 | Member | Member | Member |
| ar-leaver-01 | Member | Member | Not member |
| ar-exception-01 | Member | Not member | Not member |
| Direct member count | 4 | 2 | 2 |

See the [baseline CSV](../data/m02-membership-baseline.csv) and [evidence register](evidence-register.md). No application or resource permission has been assigned through these groups. Object IDs must be resolved uniquely before the reviews are created; aliases alone are not sufficient for final remediation validation.

## Reviewer readiness
The operator confirmed that ar-reviewer-01 completed its initial password change, opened My Access, and subsequently registered Microsoft Authenticator through Security info. Initial sign-in did not prompt for MFA registration. No captured sign-in log establishes MFA enforcement or an MFA-authenticated review session; those outcomes remain unverified. No password, registration QR code, phone detail or full sign-in name is retained in this documentation.

## Existing policy observations
| Policy | Observed inclusion | Observed target/control |
|---|---|---|
| CA004-GRANT-MFA-ManagementSurfaces-AllUsers | GG_CA_Pilot_Workforce | Microsoft Admin Portals and Azure Resource Manager; authentication strength selected |
| CA005-GRANT-MFA-SecurityInfoRegistration-AllUsers | GG_CA_Pilot_Workforce | Register security information; authentication strength selected |
| CA009-SESSION-NoPersistentBrowser-Contractors | GG_IAM_All_Contractors | All resources; one configured condition |

All three policies were shown On. CA004 and CA005 displayed a strength label beginning with "Multifactor authentica"; the full label was truncated. Their names do not establish tenant-wide inclusion. Exclusion group labels were also truncated and are not expanded here. These observations are not a complete effective-policy evaluation for the reviewer. No existing Conditional Access or authentication-method policy was changed during these checks.

## Administrative boundary
Setup used the IAM-Admin administrative session with existing PIM controls. M1 recorded a temporary Global Administrator activation. A subsequent activation reference was provided conditionally; no separate approval or activation event is asserted without evidence. Choose the least-privileged available supported role and record actual activation details for subsequent operations. Do not create a permanent privileged assignment for this project.
