# Scope and acceptance criteria

## Resource boundary
| Planned group | Purpose |
|---|---|
| AR-Finance-Access | Retain justified access; remove obsolete access; handle a temporary exception |
| AR-Operations-Access | Validate non-response handling and removal of unnecessary membership |
| AR-Control-Access | Verify unchanged membership outside review scope |

Use cloud-created, non-role-assignable security groups with assigned direct user membership. Dedicated synthetic users and reviewers will be specified in M2. Do not use dynamic, nested or synchronised memberships for the execution scope. Existing groups and accounts from earlier implementations are excluded from remediation.

## Acceptance criteria
| Case | Required evidence |
|---|---|
| Retain | Approved decision, justification and retained membership |
| Mover | Denied obsolete membership removed; intended memberships preserved |
| Access no longer needed | Denied decision applied and removal independently confirmed |
| Non-response | Actual deadline reached without a decision; configured fallback observed |
| Exception | Owner, rationale, expiry, follow-up and actual handling recorded |
| Control | Before/after membership equality for AR-Control-Access |
| Recovery | Authorised restoration of one deliberately removed test membership, verified after remediation evidence is preserved |

Temporary exceptions are a documented process, not a claim of native automatic expiry. Their implementation and expiry enforcement must be explicit in M2. Non-response tests must reach their actual deadline; early termination cannot be presented as an expiry test.

## Completion boundary
Compare expected and observed membership using object IDs and fresh reads after decision application. Report pending processing or mismatches as unresolved, not successful. Record any manual remediation separately from native decision application. Review creation, decisions and remediation are untested at M1.
