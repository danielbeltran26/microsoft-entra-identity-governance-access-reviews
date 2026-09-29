# Temporary exception handling

## EXC-001

| Field | Value |
|---|---|
| Status | Planned; reviewer approval and enforcement pending |
| Identity | ar-exception-01 |
| Group | AR-Finance-Access |
| Business rationale | Temporary completion of the synthetic Finance handover |
| Accountable owner and executor | IAM-Admin |
| Reviewer | ar-reviewer-01 |
| Expiry | 3 October 2026, 18:00 Europe/London; 17:00 UTC |
| Enforcement | Manual membership removal and independent verification |

## Procedure

1. Confirm the exception remains valid and the planned review deadline precedes expiry.
2. Record the approval justification with EXC-001 and its expiry when reviewing the Finance membership.
3. After review application, verify that the account remains a direct Finance member. Preserve this result.
4. At expiry, use an appropriately authorized administrative session to open Entra ID > Groups > All groups > AR-Finance-Access > Members.
5. Resolve the exact account against the recorded object-ID mapping, select only ar-exception-01 and remove that membership.
6. Refresh and independently query the member set. Expected Finance membership is ar-finance-01 only.
7. Record the actual removal timestamp, executor, verification and any delay. An overdue action is a finding, not an on-time success.

No automatic scheduler or native expiring membership has been configured. Do not remove the user account or its P2 licence as part of this exception action. An extension requires a new recorded rationale, owner decision and expiry before the existing deadline; never silently rewrite the original exception.
