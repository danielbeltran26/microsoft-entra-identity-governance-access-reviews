# Temporary exception handling

## EXC-001

| Field | Value |
|---|---|
| Status | Closed early by authorized manual removal on 1 October 2026 at 00:01:46 BST |
| Identity | ar-exception-01 |
| Group | AR-Finance-Access |
| Business rationale | Temporary completion of the synthetic Finance handover |
| Accountable owner and executor | IAM-Admin |
| Reviewer | ar-reviewer-01 |
| Original expiry | 3 October 2026, 18:00 Europe/London; 17:00 UTC |
| Enforcement | Manual membership removal and independent verification |

## Procedure

1. Confirm the exception remains valid and the planned review deadline precedes expiry.
2. Record the approval justification with EXC-001 and its expiry when reviewing the Finance membership.
3. After review application, verify that the account remains a direct Finance member. Preserve this result.
4. At expiry, or after recording a separately authorized early closure, use an appropriately authorized administrative session to open Entra ID > Groups > All groups > AR-Finance-Access > Members.
5. Resolve the exact account against the recorded object-ID mapping, select only ar-exception-01 and remove that membership.
6. Refresh and independently query the member set. Expected Finance membership is ar-finance-01 only.
7. Record the actual removal timestamp, executor, verification and any delay. An overdue action is a finding, not an on-time success.

No automatic scheduler or native expiring membership has been configured. Do not remove the user account or its P2 licence as part of this exception action. An extension requires a new recorded rationale, owner decision and expiry before the existing deadline; never silently rewrite the original exception.

## Closure record

The owner authorized early closure to complete the controlled laboratory exercise. The original approval and 3 October expiry remain historical facts; the business handover was not independently assessed as complete. IAM-Admin manually removed ar-exception-01 from AR-Finance-Access at 1 October 2026, 00:01:46 BST (30 September 2026, 23:01:46 UTC). The audit event showed Success and IAM-Admin; the operator confirmed the target account. The membership screenshot showed only ar-finance-01. The final read-only Graph check at 2026-09-30T23:04:44.4198211Z matched Finance 1, Operations 1 and Control 2 with ExceptionExpected False.

This verifies owner-authorized early manual enforcement, not automatic expiry or removal at the original deadline. No further removal is due for EXC-001 because the membership is already absent. See [exception closure evidence](../docs/m04-exception-closure.md).
