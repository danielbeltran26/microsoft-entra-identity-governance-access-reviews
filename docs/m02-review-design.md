# M2 - Review design

Status: planned; no review definition or decision has been executed.

## Review configuration

| Setting | Finance | Operations |
|---|---|---|
| Review name | AR-Finance-Review-01 | AR-Operations-Review-01 |
| Resource | AR-Finance-Access | AR-Operations-Access |
| Type | Teams + Groups; selected group | Teams + Groups; selected group |
| Users in scope | All users in the selected group | All users in the selected group |
| Reviewer selection | Selected user: ar-reviewer-01 | Selected user: ar-reviewer-01 |
| Stages | Single | Single |
| Recurrence | One time | One time |
| Duration | 1 day | 1 day |
| Justification required | Yes | Yes |
| Auto-apply results | Yes | Yes |
| If reviewers do not respond | Remove access | Remove access |

Use ordinary resource reviews, not catalog reviews or access-package reviews. All users means all members of the selected group, not all tenant users. Record the actual start/end timestamps and timezone from the created instances. Planned creation date: 30 September 2026. If creation is delayed, recheck the schedule against EXC-001 and subscription expiry before starting.

The control group is excluded from both reviews. Recommendations are not the business authority for decisions: recently created lab accounts have no representative 30-day sign-in history. No advanced recommendation, multi-stage or Governance-only feature is required. The reviewer uses My Access directly; email notifications are not an execution dependency.

## Decision plan

| Group | Account | Decision | Justification |
|---|---|---|---|
| AR-Finance-Access | ar-finance-01 | Approve | Current Finance responsibilities require continued membership. |
| AR-Finance-Access | ar-mover-01 | Deny | User has moved to Operations; Finance membership is no longer required. |
| AR-Finance-Access | ar-leaver-01 | Deny | User has left; remove residual Finance membership. Sign-in is already disabled. |
| AR-Finance-Access | ar-exception-01 | Approve temporarily | Finance handover under EXC-001; membership removal due 3 October 2026 at 18:00 Europe/London (17:00 UTC). |
| AR-Operations-Access | ar-mover-01 | Approve | Current Operations responsibilities require continued membership. |
| AR-Operations-Access | ar-leaver-01 | No decision | Deliberately leave unanswered to test the non-response fallback. |

Approve temporarily is an ordinary Approve decision backed by the manual exception process, not a distinct native decision type. Do not select Deny or Don't know for the Operations leaver test. Do not stop that review early. Wait for the actual deadline and processing before validating fallback removal.

## Expected results

After native results are applied, Finance contains ar-finance-01 and ar-exception-01; Operations contains ar-mover-01; Control retains ar-finance-01 and ar-mover-01. After manual exception removal, Finance contains only ar-finance-01. See [expected outcomes](../data/m02-expected-outcomes.csv).

Remediation is limited to group membership. Application assignments, licences and user accounts are outside the removal scope. The leaver account remains disabled throughout the tests.

## Timing and dependencies

The exception expires on 3 October 2026 at 18:00 Europe/London, with manual enforcement. Complete evidence collection by 5 October ahead of the observed 6 October trial expiry. An incomplete or failed operation stays unresolved; do not substitute manual removal for proof of native auto-application. Schedule changes must be recorded explicitly before execution.

## References

- [Create access reviews](https://learn.microsoft.com/en-us/entra/id-governance/create-access-review)
- [Perform access reviews](https://learn.microsoft.com/en-us/entra/id-governance/perform-access-review)
- [Access review FAQs](https://learn.microsoft.com/en-us/entra/id-governance/access-reviews-faqs)
