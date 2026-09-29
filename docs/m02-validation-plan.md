# M2 - Validation plan and execution gates

## Baseline

Five dedicated accounts have direct P2 assignments. AR-Finance-Access contains four direct members, AR-Operations-Access contains two, and AR-Control-Access contains two. IAM-Admin owns all three groups. The reviewer has accessed My Access and registered Microsoft Authenticator.

The [membership baseline](../data/m02-membership-baseline.csv) and [screenshots](evidence-register.md) establish the starting member sets for the tests below. Review execution and outcome validation remain pending.

## Gates before review creation

1. Resolve each of the five users and three groups to a unique object ID. Obtain fresh direct-member lists keyed by object ID and verify the 4/2/2 baseline.
2. Confirm the review creator has an active supported role for this scope. Use the least-privileged available assignment; maintain PIM eligibility and approval controls. Record the role and activation interval.
3. Verify effective reviewer authentication and record whether an actual sign-in satisfied MFA. Registration alone does not close this gate. If policy changes are necessary, treat them as a separate scoped change before execution.
4. Confirm participant entitlements remain active and the selected review features are available under the trial.
5. Inspect the final review settings and actual timestamps. Ensure the one-day review can complete before EXC-001 expiry and within the licensed period.

## Outcome validation

| Test | Expected result | Required observation |
|---|---|---|
| Retain | ar-finance-01 remains in Finance | Approved decision and fresh membership read |
| Mover | ar-mover-01 removed from Finance; retained in Operations and Control | Denied Finance decision and all three membership checks |
| Leaver | ar-leaver-01 removed from Finance | Denied decision applied; user remains disabled |
| Non-response | ar-leaver-01 removed from Operations | No reviewer decision before actual deadline, fallback result and fresh membership read |
| Exception | ar-exception-01 retained initially; removed manually at expiry | Approval, EXC-001 record, actual manual action time and fresh read |
| Control | Exact membership set unchanged | Object-ID set equality before and after |
| Recovery | Mover Finance membership restored then removed again | Prior removal evidence, specific authorization, restore verification and final cleanup verification |

Capture the review result and application status, then independently read current group membership. Pending processing, application errors and set mismatches remain unresolved. Preserve native outcomes before any manual recovery. Record manual remediation separately from native review application.

## Final expected state

Finance: ar-finance-01 only. Operations: ar-mover-01 only. Control: ar-finance-01 and ar-mover-01. The reviewer is not a member of any of these groups; the leaver stays disabled. P2 assignments remain direct and are not removed by membership remediation.
