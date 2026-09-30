# Access review policy

Status: implemented within the revised laboratory scope; see [final acceptance](../docs/m05-final-acceptance.md) for verified results and test limitations.

1. Limit reviews to explicitly named, cloud-created, non-role-assignable security groups with direct Assigned user membership.
2. Separate administration from attestation. IAM-Admin configures the scope; ar-reviewer-01 makes business decisions and receives no administrative role for review participation.
3. Require justification for explicit decisions. Evaluate the documented synthetic business need rather than relying on short-lived account sign-in recommendations.
4. Apply deny decisions and the configured Remove access fallback to group membership. The original test called for scheduled completion. The executed M4 test used administrator early completion and verified the configured fallback; scheduled closure remains untested.
5. Keep AR-Control-Access outside scope and compare its exact member set before and after remediation.
6. Give every temporary exception an accountable owner, rationale, expiry and follow-up. Require manual removal and verification at expiry or a separately recorded owner-authorized early closure. EXC-001 was closed early on 1 October 2026; the original expiry remains in its history.
7. Preserve decisions and post-remediation evidence before recovery. Restore only an expressly authorized membership; return the test to its approved final state.
8. Keep credentials, authentication setup secrets and personal account details out of evidence. Restrict access to identity mappings used for execution and retain only the information needed to verify each outcome.
9. Retain existing PIM, Conditional Access, emergency access and hybrid identity boundaries. Apply least privilege to subsequent operations.
10. Treat incomplete processing and failed validations as open findings. Review completion is not proof of application access revocation.
