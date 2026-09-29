# M1 - Foundation baseline

Observation date: 29 September 2026.

| Check | Observed result | Evidence source |
|---|---|---|
| Subscription | Microsoft Entra ID P2 Trial; Active | Portal observation |
| Expiry | 6 October 2026, interpreting displayed 06/10/2026 in UK format | Portal observation |
| Licence inventory | 100 total, 9 assigned, 91 available | Portal observation |
| Administrative access | IAM-Admin Global Administrator activated through existing PIM approval process | Operator confirmation |
| Resource-review form | Teams + Groups and specific group selection visible; no warning visible on inspected page | Portal observation |
| Group-owner review management | No | M01-E01 |
| Group and app review inventory | No access review to display, with empty search and no selected type filter | M01-E02 |
| Proposed group names | AR-Finance-Access, AR-Operations-Access and AR-Control-Access not found in group searches | Operator confirmation |

The group and app inventory observation does not establish the state of catalog reviews or separate PIM role reviews. Group search results will be rechecked immediately before creation.

## Access and change boundary
The baseline review used an approved, temporary activation of an existing eligible Global Administrator assignment. Lab reference LAB-IAM-P4-001 is a local reference, not an externally created service-management ticket. Group-owner delegation was left unchanged. No review definition or project group was created during these checks.

## Licensing gate
The P2 subscription provides an initial basis for the planned standard group-review scope. Exact selected features and participant entitlement must be verified before execution. Advanced Governance-only capabilities are not assumed available. Schedule live execution and export before 6 October; target completion by 5 October to allow a buffer. If execution cannot finish, establish valid licence continuity before continuing premium operations; do not assume a grace period.

## Remaining implementation gates
- Verify licences for all selected review participants and reviewers.
- Select the least-privileged supported administrative role for ongoing operations.
- Verify reviewer sign-in, MFA and existing Conditional Access requirements without weakening them.
- Recheck names and record exact object IDs before membership changes.
- Validate review duration and processing time against the remaining trial period.
