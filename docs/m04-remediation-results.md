# M4 - Native remediation results

> Historical milestone observation. EXC-001 was subsequently closed on 1 October 2026. The [M5 final acceptance record](m05-final-acceptance.md) supersedes pending items and pre-closure member sets below.


## Status and execution boundary

Finance and Operations native membership removals were verified on 30 September 2026. Both review instances were ended early by the administrator and their configured automatic application processed the results. No manual Apply action or direct group removal was used to implement these native outcomes. The later Finance restoration and cleanup were a separate authorized recovery exercise.

The original M1/M2 plan called for scheduled-deadline nonresponse testing. Operations was deliberately ended early to complete the execution in the same session. This validates configured nonresponse handling at early completion; it does not validate automatic scheduled closure. The original plan remains a historical record, with this deviation linked from the acceptance criteria.

## Finance results

| Identity | Reviewer outcome | Application observation | Independent membership observation |
|---|---|---|---|
| ar-finance-01 | Approved | Approved row had no Apply result value | Retained |
| ar-mover-01 | Denied | Success | Removed before recovery; absent again after cleanup |
| ar-leaver-01 | Denied | Success | Removed |
| ar-exception-01 | Approved under EXC-001 | Approved row had no Apply result value | Retained |

The Finance Overview displayed Complete. Two successful Remove member from group audit events occurred at 22:38:13 BST (21:38:13 UTC), initiated by the application Request Approvals Read Platform. Their targets were inspected and matched the mover and leaver in Finance. The exact early-stop timestamp was not retained. Initial post-completion screens still showed four members and blank application results; subsequent successful results and two-member state established application.

The leaver's Account enabled value was reconfirmed as No before Operations completion. No account enablement was part of either review or recovery.

## Operations nonresponse results

The mover's approval remained intact. The leaver was intentionally unanswered when the administrator stopped the review. The platform subsequently recorded the leaver as Denied, reviewed by AAD Access Reviews, and Apply result Success. Results displayed Applied by Access Reviews and Applied Date 30/09/2026. A separate group Members view showed only ar-mover-01.

| Event | 30 September BST | UTC | Actor | Status |
|---|---|---|---|---|
| Access review ended | 23:15:10 | 22:15:10 | IAM-Admin | Success |
| Auto Review | 23:17:18 | 22:17:18 | Identity Governance | Success |
| Apply decision | 23:30:56 | 22:30:56 | Access Reviews | Success |

At 23:17:55 BST, Overview displayed Applying with one approved and one denied. Final membership was observed at 23:32:22 BST; successful application results were observed at 23:33:39 BST. The Apply decision timestamp is a review audit event, not a separately inspected directory removal timestamp. No separate Operations directory-removal actor is asserted.

## Verified member sets and control

| Group | Baseline | Observed after relevant remediation and recovery cleanup |
|---|---|---|
| AR-Finance-Access | finance, mover, leaver, exception | ar-finance-01; ar-exception-01 |
| AR-Operations-Access | mover, leaver | ar-mover-01 |
| AR-Control-Access | finance, mover | ar-finance-01; ar-mover-01 |

Control membership was inspected after Finance application and confirmed unchanged after recovery. The final consolidated [read-only validation script](../scripts/Test-ARMembership.ps1) passed at 2026-09-30T22:48:50.8940170Z (23:48:50 BST), after Operations application. It resolved five users and matched all three current group member sets by object ID: Finance 2, Operations 1 and Control 2. The leaver was disabled, the reviewer was outside all three groups and the exception remained assigned. No tenant changes were made by validation. This compares current resolved IDs with expected identity sets; it is not a comparison against a persisted historical ID export.

## Retained evidence

- [Finance membership after application](../screenshots/m04-01-finance-membership-after-review.png)
- [Control membership after Finance application](../screenshots/m04-02-control-membership-after-finance-review.png)
- [Operations membership after application](../screenshots/m04-05-operations-membership-after-review.png)
- [Operations review audit sequence](../screenshots/m04-06-operations-auto-review-audit.png)

Detailed Finance audit targets and result screens were inspected during execution but are not retained as numbered evidence. The [evidence register](evidence-register.md) identifies the retained files. [Recovery results](m04-recovery-validation.md) record the manual test separately. [Acceptance status](m04-acceptance-status.md) lists the remaining boundaries.

## Microsoft guidance

[Complete access reviews](https://learn.microsoft.com/en-us/entra/id-governance/complete-access-review) documents early Stop and automatic application after completion or early stop. [Create access reviews](https://learn.microsoft.com/en-us/entra/id-governance/create-access-review) documents nonresponse handling. Removal on nonresponse is the selected scenario control, not a universal recommendation for every resource.
