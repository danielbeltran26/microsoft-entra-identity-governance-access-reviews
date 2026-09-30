# Scope and acceptance criteria

## Resource boundary

| Group | Purpose |
|---|---|
| AR-Finance-Access | Retain justified access; remove obsolete access; handle a temporary exception |
| AR-Operations-Access | Validate non-response handling and removal of unnecessary membership |
| AR-Control-Access | Verify unchanged membership outside review scope |

Use cloud-created, non-role-assignable security groups with assigned direct user membership. Dedicated synthetic users and the reviewer are defined in the [M2 baseline](m02-identity-and-entitlement-baseline.md). Do not use dynamic, nested or synchronised memberships for the execution scope. Existing groups and accounts from earlier implementations are excluded from remediation.

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

Temporary exceptions require a named owner, expiry and enforcement procedure, defined in the [exception runbook](../runbooks/exception-handling.md). Non-response validation requires the review to reach its scheduled deadline.

## Completion boundary

Compare expected and observed membership using object IDs and fresh reads after decision application. Report pending processing or mismatches as unresolved, not successful. Record any manual remediation separately from native decision application. At the M1 baseline, review creation, decisions and remediation were pending. See [M3 execution](m03-review-execution.md) for subsequent progress.

## M4 execution update

The original scheduled-deadline nonresponse criterion above was not exercised. Operations was deliberately ended early on 30 September 2026; the platform then applied the configured fallback. See [M4 acceptance status](m04-acceptance-status.md) for the recorded deviation, verified outcomes and open requirements.
