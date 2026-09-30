# M5 - Operational handover

## Retained state and ownership

IAM-Admin remains responsible for review administration and validation. ar-reviewer-01 is the designated business reviewer and has no project-group membership. The departmental group owners must approve business need before subsequent reviews or restoration. The control group remains excluded.

| Resource | Handover state |
|---|---|
| AR-Finance-Access | ar-finance-01 only |
| AR-Operations-Access | ar-mover-01 only |
| AR-Control-Access | ar-finance-01 and ar-mover-01 |
| ar-leaver-01 | Disabled; absent from all three groups |
| ar-exception-01 | Enabled; no membership in the three groups; EXC-001 closed |
| Reviews | One-time instances ended early; native results applied |
| CA011 | Retained as configured; no closure-time policy change performed |
| Accounts, groups and evidence | Retained for inspection; no teardown performed |

## Repeat verification

Use an authorized Microsoft Graph session with User.Read.All and Group.Read.All. From the project root run:

```powershell
& .\scripts\Test-ARMembership.ps1 -ExceptionClosed
```

The switch selects the final expectation; it does not modify membership. Expected counts are 1/1/2, every object-ID comparison True, leaver disabled, and reviewer outside all project groups. The script's default without the switch validates the earlier state where the exception was retained and is intentionally unsuitable for the final closed state.

On failure, retain the actual output and inspect the specific group or account before changing it. Resolve duplicate names and unexpected members explicitly. Do not change expected data just to turn a failed check into a pass. If authentication is absent, establish the approved tenant session before retrying; the script does not sign in or grant permissions.

## Future review procedure

1. Confirm resource ownership, membership model, participant licensing, reviewer availability and scope before creating a new review.
2. Choose a business-appropriate review window and recurrence. A quarterly departmental review plus event-driven mover/leaver checks is a proposed starting point for owner evaluation, not a configured schedule or a universal Microsoft requirement.
3. Require decision justifications. Select nonresponse behavior deliberately and document its access-loss implications; this exercise selected Remove access.
4. Allow a representative future instance to reach its scheduled end if scheduled-closure assurance is required. Early completion cannot establish that result.
5. Verify applied results, fresh direct membership sets and relevant audit events. Escalate failed application or mismatches to IAM-Admin; do not equate a completed review with successful remediation.
6. Preserve outcomes before any recovery. Use the [recovery procedure](../runbooks/recovery-design.md) only after a recorded owner authorization.
7. Follow the [exception procedure](../runbooks/exception-handling.md) for new exceptions. EXC-001 has no remaining action; any new access request needs a new decision.

## Administrative and licensing considerations

The lab used Global Administrator and a 24-hour PIM activation maximum. Those existing settings were not changed during closure. Before wider deployment, evaluate the least-privileged supported role and shorter task-bound activations, while preserving emergency access. Do not treat the lab configuration as a production security baseline.

The observed P2 trial expiry is 6 October 2026. The documented premium operations completed on 1 October. Future premium operations require licence continuity and a fresh entitlement check. No licence removal or subscription change was performed. Shared controls from earlier IAM projects remain intact; no broad cleanup is authorized by this handover.

## Guidance and boundaries

- [Microsoft access review deployment planning](https://learn.microsoft.com/en-us/entra/id-governance/deploy-access-reviews): resource owners, population, review frequency and operating responsibilities.
- [Complete access reviews](https://learn.microsoft.com/en-us/entra/id-governance/complete-access-review): distinguish review completion, result application and resource outcomes.
- [Role best practices](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/best-practices): evaluate least privilege for future administration.
- [Governance licensing fundamentals](https://learn.microsoft.com/en-us/entra/id-governance/licensing-fundamentals): check licensing for the capabilities and population in use.

These operational proposals are documented handover guidance. No recurring review, scheduled exception-removal task, production deployment or downstream application test was configured during handover. The [final acceptance record](m05-final-acceptance.md) is the authoritative observed completion boundary.
