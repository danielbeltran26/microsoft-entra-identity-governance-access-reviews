# M3 - Review configuration and execution

## Observed state

On 30 September 2026, both reviews were Active in the administrator inventory. Finance had four submitted decisions; Operations had one approval and one unanswered member. My Access displayed Finance as Completed because its reviewer decisions were complete. That label does not establish that membership remediation has occurred. The Finance administrator Results view showed blank Apply result values.

## Scope and configuration

| Setting | Finance | Operations |
|---|---|---|
| Name | AR-Finance-Review-01 | AR-Operations-Review-01 |
| Group | AR-Finance-Access | AR-Operations-Access |
| Scope | Everyone in selected group | Everyone in selected group |
| Reviewer | ar-reviewer-01 | ar-reviewer-01 |
| Recurrence | One time | One time |
| Portal review period | 30 September-1 October 2026 | 30 September-1 October 2026 |
| Auto-apply results | Enabled | Enabled |
| Nonresponse action | Remove access | Remove access |

Finance's creation summary and Operations' saved completion settings confirmed auto-application and Remove access. The configured design uses a single stage, required justification, email notifications and reminders, with decision helpers disabled. Finance's summary confirmed these settings; the complete Operations summary has not been retained. Email delivery has not been tested.

The portal schedule showed dates only. Exact instance closing timestamps have not been established. Neither review was stopped early or manually applied. Operations ar-leaver-01 remains unanswered to test deadline-driven fallback.

AR-Control-Access is excluded from the reviews.

## Pre-review validation

Microsoft Graph read checks resolved all five users and all three groups uniquely. Account-state checks passed, including the disabled leaver. Direct membership matched Finance 4, Operations 2 and Control 2 before review creation. The mapping existed in the validation session; object IDs are not published in this record.

[Reviewer authentication](m03-authentication-and-administration.md) and all five [submitted decision justifications](m03-decision-record.md) were verified separately.

## Outstanding outcome checks

After native completion and application, inspect per-user application results and independently read all three member sets. Expected Finance members are ar-finance-01 and ar-exception-01; Operations contains ar-mover-01; Control retains ar-finance-01 and ar-mover-01. Verify that ar-leaver-01 stays disabled.

Record the actual completion/application timestamps and any processing failure. Preserve nonresponse and removal evidence before recovery actions. EXC-001 removal remains a separate manual action on 3 October. See the [validation plan](m02-validation-plan.md) and [exception runbook](../runbooks/exception-handling.md).

## Evidence

See [M3 evidence](evidence-register.md#m3-review-execution). Retained screenshots show authentication and review progress; detailed justifications were inspected in My Access and transcribed into the decision record. The four screenshots do not independently evidence every configuration field or justification.

## Subsequent M4 outcome

This document preserves the M3 observation point. Both reviews were subsequently ended early and native outcomes were applied on 30 September. See [M4 remediation results](m04-remediation-results.md) and [acceptance status](m04-acceptance-status.md) for current outcomes and remaining requirements.
