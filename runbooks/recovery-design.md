# Recovery design

Status: planned; execution validation belongs to M4.

1. Record exact in-scope user and group object IDs and direct memberships before changes.
2. Preserve reviewer decisions and the post-remediation membership evidence before recovery.
3. Obtain and record the lab recovery authorisation and business reason.
4. Restore only the intentionally removed test membership identified in the recovery case.
5. Query membership again and compare with the approved recovery target.
6. Check the control group and unrelated memberships remain unchanged.
7. Record recovery as a separate event so the original denied-access outcome remains traceable.

Do not restore all memberships indiscriminately, alter existing PIM policies, weaken Conditional Access or use emergency accounts for routine operations. A failed or unexpected remediation requires investigation before further membership changes. Exact commands and portal steps will be finalised against the M2 inventory.
