# Microsoft Entra Identity Governance: Access Reviews & Recertification

## Objective

Design and validate access recertification for assigned membership in dedicated cloud security groups in a synthetic identity laboratory. Trace access from baseline membership through reviewer decisions to independently verified remediation.

## Status

M1 foundation and M2 membership baseline and review design are documented. Five dedicated users and three groups have been created. Participant P2 assignments, direct memberships and ownership were confirmed in the portal. The reviewer completed initial sign-in, password change and Microsoft Authenticator registration. No access reviews have been created; no review decisions, automated remediation or exception-expiry actions have been executed.

## Milestones

| Milestone | Scope | Status |
|---|---|---|
| M1 | Foundation, licensing and scope | Foundation baseline complete |
| M2 | Access inventory and review design | Baseline and design documented; execution gates listed |
| M3 | Review configuration and execution | Pending |
| M4 | Remediation, exceptions and independent validation | Pending |
| M5 | Operational handover and final assurance | Pending |

## Design

Finance and Operations use separate one-time group reviews. A third control group remains outside review scope. The design covers retained membership, obsolete mover and leaver membership, deadline-driven non-response, a manually enforced temporary exception, and controlled recovery. Existing hybrid identity, Conditional Access, PIM and emergency-access configurations remain outside remediation scope.

## Documentation

- [Foundation baseline](docs/m01-foundation-baseline.md)
- [Scope and acceptance criteria](docs/m01-scope-and-acceptance.md)
- [M2 identity and entitlement baseline](docs/m02-identity-and-entitlement-baseline.md)
- [M2 review design](docs/m02-review-design.md)
- [M2 validation plan and execution gates](docs/m02-validation-plan.md)
- [Membership baseline](data/m02-membership-baseline.csv)
- [Expected outcomes](data/m02-expected-outcomes.csv)
- [Review policy](policies/access-review-policy.md)
- [Evidence register](docs/evidence-register.md)
- [Architecture and review lifecycle](architecture/access-review-lifecycle.md)
- [Exception handling](runbooks/exception-handling.md)
- [Recovery design](runbooks/recovery-design.md)

## Limitations

Review execution and remediation testing are pending. Before review creation, resolve the user and group object IDs and verify current memberships and reviewer MFA enforcement. The reviewer accesses reviews through My Access; email delivery is untested. The scope covers group membership, with no application assignments. EXC-001 uses manual removal at expiry.

The P2 trial was observed to expire on 6 October 2026. Complete premium operations and evidence collection by 5 October or establish valid licence continuity. Advanced Governance-only features are outside the selected design.

## References

- [Create group and application access reviews](https://learn.microsoft.com/en-us/entra/id-governance/create-access-review)
- [Plan access reviews](https://learn.microsoft.com/en-us/entra/id-governance/deploy-access-reviews)
- [Complete access reviews](https://learn.microsoft.com/en-us/entra/id-governance/complete-access-review)
- [Microsoft Entra licensing](https://learn.microsoft.com/en-us/entra/fundamentals/licensing)
