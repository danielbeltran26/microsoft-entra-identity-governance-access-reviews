# Recovery design

Status: restoration and cleanup verified in the M4 portal test on 30 September 2026. See [recovery validation](../docs/m04-recovery-validation.md).

## Controlled recovery target

Restore only ar-mover-01 as a direct member of AR-Finance-Access. This is a temporary recovery exercise after successful remediation, not a renewed business entitlement. IAM-Admin must record a specific authorization before execution.

## Procedure

1. Resolve the exact user and group object IDs against the pre-execution mapping.
2. Preserve the denied Finance decision, completed application status and a fresh membership read proving the mover is absent.
3. Record the recovery authorization, reason, target and executor.
4. Open Entra ID > Groups > All groups > AR-Finance-Access > Members > Add members. Select only ar-mover-01 and confirm.
5. Refresh and independently verify that the exact membership was restored. Preserve this as a separate recovery event.
6. Confirm Operations and Control membership are unchanged.
7. Remove the restored ar-mover-01 membership from Finance and verify it is absent again. Preserve cleanup evidence.

The expected Finance set after cleanup depends on EXC-001: before expiry, ar-finance-01 and ar-exception-01; after exception enforcement, ar-finance-01 only. Operations contains ar-mover-01 after its review application. During the executed recovery, Operations still contained mover and leaver because its review had not yet completed. Control remains ar-finance-01 and ar-mover-01. Do not restore the leaver, re-enable sign-in, weaken Conditional Access or use emergency accounts for routine recovery.

Stop on an unexpected outcome and investigate before further writes. Record every manual action separately from native review application.
