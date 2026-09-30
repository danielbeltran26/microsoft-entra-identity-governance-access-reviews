# M3 - Reviewer authentication and administration

## Reviewer authentication

An initial My Access event for Azure AD Identity Governance - Entitlement Management reported single-factor authentication. Existing policies did not apply to that event. Authenticator registration alone therefore did not establish MFA enforcement.

CA011-GRANT-MFA-AllResources-AccessReviewReviewer was configured for ar-reviewer-01 only, targeting all resources and requiring the Multifactor authentication strength. No additional grant, condition or session control was configured. A report-only test returned User action required; the policy was subsequently enabled.

The later sign-in showed CA011 Success. Authentication details at 30 September 2026 10:42:45 UTC showed Previously satisfied, Succeeded Yes and a multifactor requirement. This establishes MFA satisfaction through a prior claim; it does not evidence a fresh Authenticator challenge for that event. Existing CA001, CA004, CA005, CA009 and CA010 were not modified as part of this scoped change.

## Administrative session

IAM-Admin used a PIM-activated Global Administrator assignment. During M3, the role's maximum activation duration was changed to 24 hours and a 24-hour activation was confirmed active under IAM-P4-004. This is a role-policy change, not a permanent active assignment. The exact activation start/end timestamps were not captured. Earlier project baselines describe their historical configuration, not this later change.

The Global Administrator maximum applies to eligible activations for that role; it is not a per-session preference. Approval, MFA and ticket requirements were intended to remain in place; a complete post-change policy export has not been retained.

## Read-only validation

Local Microsoft Graph PowerShell authenticated to the organizational directory with delegated User.Read.All and Group.Read.All. Read users and read groups tests passed. Baseline checks read user state and group membership; they did not change tenant objects. Access-review Graph permissions were not used for the portal decision verification.
