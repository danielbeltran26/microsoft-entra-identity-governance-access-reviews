# M5 - Final acceptance

## Decision and scope

The revised controlled laboratory execution is complete. Both reviews were ended early by the administrator; native result application, configured nonresponse handling, recovery, and owner-authorized early exception removal were verified. The original scheduled-end test was replaced during execution at the owner's direction. Scheduled closure and removal at the original exception expiry were not exercised and are not passed tests.

The final technical observation was 1 October 2026 at 00:04:44 BST, recorded by the read-only script as 2026-09-30T23:04:44.4198211Z. Completion refers to this observed laboratory state and documented handover; it is not production certification or a claim that every Entra behavior was tested.

## Acceptance matrix

| Requirement | Result | Evidence |
|---|---|---|
| Retain justified Finance access | Passed | Approved decision; finance account retained |
| Remove obsolete mover access | Passed | Finance deny/application success; mover remains in Operations and Control |
| Remove leaver memberships | Passed | Finance native removal; Operations platform denial and application success; final absence from both |
| Nonresponse fallback after early completion | Passed | Operations Auto Review and Apply decision audit sequence |
| Original scheduled-end criterion | Replaced; not tested | Owner-directed early completion documented in M4 |
| Temporary exception lifecycle | Passed for early manual closure | Original approval, retention, owner decision, successful removal and fresh verification |
| Original exception deadline enforcement | Not tested | Membership removed early; no scheduler configured |
| Control-group isolation | Passed | Both intended current object IDs matched after all remediation |
| Authorized recovery and cleanup | Passed | Finance mover restored and removed; successful events and both member lists |
| Account state and reviewer separation | Passed | Disabled leaver and reviewer outside all three groups |
| Operational handover | Documented | Ownership, repeat validation, recovery, cadence proposal and retained risks |

## Final independent verification

Executed scripts/Test-ARMembership.ps1 with -ExceptionClosed using the existing authorized Microsoft Graph session. Five exact-name user resolutions succeeded. The three group member sets matched using their currently resolved object IDs.

| Group | Expected members | Expected count | Actual count | ObjectIdSetMatches |
|---|---|---:|---:|---|
| AR-Finance-Access | ar-finance-01 | 1 | 1 | True |
| AR-Operations-Access | ar-mover-01 | 1 | 1 | True |
| AR-Control-Access | ar-finance-01; ar-mover-01 | 2 | 2 | True |

UsersResolved: 5. GroupsMatched: 3. LeaverDisabled: True. ReviewerOutsideProjectGroups: True. ExceptionExpected: False. TenantChanges: False. Account and group-configuration checks passed. This result is transcribed from the actual executed output. No separate validation screenshot was retained.

The script makes fresh reads and follows pagination. It compares current object IDs with expected identities; no persisted historical object-ID export exists, so recreation under an identical name is not ruled out by that comparison alone. Named baseline and final screenshots provide the retained historical membership evidence.

## Evidence and limitations

Sixteen numbered screenshots preserve the chronological record. Earlier 4/2/2, 2/1/2 and recovery member sets are historical states; the final state is 1/1/2. The final membership table is also available as [CSV](../data/m05-final-membership.csv).

The original review decisions remain unchanged: the exception's original approval is followed by a separate administrative removal. Finance's exact review stop time was not captured. Operations' review application event was inspected; its separate directory removal event was not independently inspected. Notification delivery and a fresh MFA challenge were not tested. There are no application assignments on these groups, so downstream session termination was not validated.

No outstanding membership mismatch or exception remains in the checked scope. Wider administrative hardening and licence continuity are handover considerations, not implemented changes. See [operational handover](m05-operational-handover.md), [exception closure](m04-exception-closure.md), and [evidence register](evidence-register.md).
