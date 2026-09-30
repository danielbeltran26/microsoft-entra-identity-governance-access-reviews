# M4 - Controlled recovery validation

## Authorization and scope

The temporary restoration test was expressly authorized on 30 September 2026 at 22:54:43 BST. Its purpose was to demonstrate recovery of a removed direct group membership and return to the approved state. The sole target was ar-mover-01 in AR-Finance-Access; it did not reinstate a business entitlement.

Finance native removal evidence was preserved before the test. IAM-Admin performed the manual actions. The leaver was not restored or enabled.

## Observed sequence

| Action | BST on 30 September | UTC | Result |
|---|---|---|---|
| Add mover to Finance | 23:01:57 | 22:01:57 | Audit Success; Finance showed exception, finance and mover |
| Remove mover from Finance | 23:03:39 | 22:03:39 | Audit Success; Finance returned to exception and finance |

Both audit targets and IAM-Admin actor were inspected and confirmed during execution. [Restoration evidence](../screenshots/m04-03-finance-recovery-restored.png) and [cleanup evidence](../screenshots/m04-04-finance-recovery-cleanup.png) preserve the member lists. Detailed manual audit screens were not retained as numbered files.

Operations and Control were refreshed after cleanup and confirmed unchanged: Operations still contained mover and leaver because its review had not yet been ended; Control contained finance and mover. Operations nonresponse removal occurred later, as recorded in [native remediation results](m04-remediation-results.md).

## Outcome

Portal verification established restoration and cleanup of the intended membership, with no observed change to the two comparison groups during recovery. The consolidated final object-ID comparison passed at 23:48:50 BST after Operations remediation, matching Finance 2, Operations 1 and Control 2. The Finance exception remains valid until its recorded expiry, so recovery cleanup correctly leaves two Finance members. The [exception runbook](../runbooks/exception-handling.md) owns the separate follow-up.
