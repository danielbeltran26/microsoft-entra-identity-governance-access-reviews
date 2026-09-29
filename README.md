# Microsoft Entra Identity Governance: Access Reviews & Recertification

## Objective
Design and validate access recertification for assigned membership in dedicated cloud security groups in a synthetic identity laboratory. Trace access from baseline membership through reviewer decisions to independently verified remediation.

## Status
Milestone 1 foundation observations and scope are documented. No project groups, review definitions or remediation have been created. Implementation and outcome tests remain pending.

## Milestones
| Milestone | Scope | Status |
|---|---|---|
| M1 | Foundation, licensing and scope | Foundation baseline complete |
| M2 | Access inventory and review design | Planned |
| M3 | Review configuration and execution | Planned |
| M4 | Remediation, exceptions and independent validation | Planned |
| M5 | Operational handover and final assurance | Planned |

## Design
Finance and Operations groups will be reviewed; a third control group will remain outside review scope. Dedicated synthetic identities will receive required licences before participating. Existing hybrid identity, Conditional Access, PIM and emergency-access configurations are excluded from remediation.

## Documentation
- [Foundation baseline](docs/m01-foundation-baseline.md)
- [Scope and acceptance criteria](docs/m01-scope-and-acceptance.md)
- [Evidence register](docs/evidence-register.md)
- [Review lifecycle](architecture/access-review-lifecycle.md)
- [Recovery design](runbooks/recovery-design.md)

## Limitations
An available creation form is not proof of successful review execution or complete licensing compliance. Participant licence assignments and permissions must be checked in M2. Membership removal does not by itself prove application access revocation. No application access test is included in the current scope.

## References
- [Create group and application access reviews](https://learn.microsoft.com/en-us/entra/id-governance/create-access-review)
- [Plan access reviews](https://learn.microsoft.com/en-us/entra/id-governance/deploy-access-reviews)
- [Microsoft Entra licensing](https://learn.microsoft.com/en-us/entra/fundamentals/licensing)
