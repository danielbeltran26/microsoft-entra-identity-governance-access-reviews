# Access review policy

Status: project design; implementation validation pending.

1. Limit reviews to explicitly named, cloud-created, non-role-assignable security groups with direct Assigned user membership.
2. Separate administration from attestation. IAM-Admin configures the scope; ar-reviewer-01 makes business decisions and receives no administrative role for review participation.
3. Require justification for explicit decisions. Evaluate the documented synthetic business need rather than relying on short-lived account sign-in recommendations.
4. Apply deny decisions and the configured Remove access fallback to group membership. Wait for the review deadline to validate non-response.
5. Keep AR-Control-Access outside scope and compare its exact member set before and after remediation.
6. Give every temporary exception an accountable owner, rationale, expiry and follow-up. EXC-001 uses manual enforcement and must not be described as automatic expiry.
7. Preserve decisions and post-remediation evidence before recovery. Restore only an expressly authorized membership; return the test to its approved final state.
8. Keep credentials, authentication setup secrets and personal account details out of evidence. Use synthetic aliases; keep exact execution identifiers in the excluded working area.
9. Retain existing PIM, Conditional Access, emergency access and hybrid identity boundaries. Apply least privilege to subsequent operations.
10. Treat incomplete processing and failed validations as open findings. Review completion is not proof of application access revocation.
