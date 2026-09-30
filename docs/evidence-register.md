# Evidence register

Screenshots document the initial review configuration and direct group memberships. SHA256 values identify the retained evidence files.

| ID | File | Observation | Bytes | SHA256 |
|---|---|---|---:|---|
| M01-E01 | [Delegation baseline](../screenshots/m01-01-access-review-delegation-baseline.png) | Group-owner review management set to No | 86259 | FEAE4E88875C2B0FC9E6C71867EEF1F92C54E20780DB23CAD596D75F0C1B018B |
| M01-E02 | [Review inventory](../screenshots/m01-02-access-review-inventory-baseline.png) | No group and app reviews displayed | 79927 | 8B6523B253DE9A6E7E05EF35BE6527172EC24DCC89EC7C67AE0AAE19BD3625AB |

## M2 membership baseline

Observation date: 30 September 2026 (Europe/London).

| ID | File | Observation | Bytes | SHA256 |
|---|---|---|---:|---|
| M02-E01 | [Finance baseline](../screenshots/m02-01-finance-membership-baseline.png) | Four direct members: finance, mover, leaver, exception | 81545 | 3F50681794E244FC8ABF168036FD5C98BA2BE034B01532E5DBDF666E5BAC4004 |
| M02-E02 | [Operations baseline](../screenshots/m02-02-operations-membership-baseline.png) | Two direct members: mover and leaver | 76800 | FF99AE28F56F8F4B61D25598043BF34290101E7F2CEC51154CD75F1A97D74CA4 |
| M02-E03 | [Control baseline](../screenshots/m02-03-control-membership-baseline.png) | Two direct members: finance and mover | 76421 | 019A1FC55FF5150F30D7D18B744798773DCD191757ABA4ED4F4D87CC3CE71D28 |

## M3 review execution

Observation date: 30 September 2026 (Europe/London).

| ID | File | Observation | Bytes | SHA256 |
|---|---|---|---:|---|
| M03-E01 | [m03-01-reviewer-ca011-success.png](../screenshots/m03-01-reviewer-ca011-success.png) | CA011 Success in Conditional Access | 40240 | 13AD78A8408D4E7008DBFEC4A26B2C263886E3FA13B300143E8E6F44438D71F8 |
| M03-E02 | [m03-02-reviewer-mfa-satisfied.png](../screenshots/m03-02-reviewer-mfa-satisfied.png) | MFA requirement satisfied through a prior claim | 29298 | E4BBD54E349B93952BF13FDEA5B1B9A1678E6A3A112570CAF855B62185F4ADF8 |
| M03-E03 | [m03-03-access-reviews-in-progress.png](../screenshots/m03-03-access-reviews-in-progress.png) | Both administrator review statuses Active | 90193 | 0C9F51209E0BED45B193613A25B07EBF3799EB96C64448BA22FE0FBC44B83B82 |
| M03-E04 | [m03-04-reviewer-decision-progress.png](../screenshots/m03-04-reviewer-decision-progress.png) | Finance reviewer work complete; Operations one pending | 34940 | BF252B1BB01E567CAF7DB9AD674D608C31930E84ADCE4B28BFE846D3CD480055 |

## M4 remediation and recovery

Observation date: 30 September 2026 (Europe/London).

| ID | File | Observation | Bytes | SHA256 |
|---|---|---|---:|---|
| M04-E01 | [m04-01-finance-membership-after-review.png](../screenshots/m04-01-finance-membership-after-review.png) | Finance contains finance and exception after native application | 72772 | F9668A98719220BD4935A4FC67E4E86B82849E2B25E47BDD16074CF89C01F113 |
| M04-E02 | [m04-02-control-membership-after-finance-review.png](../screenshots/m04-02-control-membership-after-finance-review.png) | Control contains finance and mover after Finance application | 72951 | 6A84ACC77B5C85F91DA189CDBEBF2A9EEB6599E6A026B6F42761B12427F5058B |
| M04-E03 | [m04-03-finance-recovery-restored.png](../screenshots/m04-03-finance-recovery-restored.png) | Temporary mover restoration; Finance contains three members | 77430 | CF3AADFFF66303C462DE2FA5AB331BD5AFCF06F6F4F1411580EB51C3BFF3A9EC |
| M04-E04 | [m04-04-finance-recovery-cleanup.png](../screenshots/m04-04-finance-recovery-cleanup.png) | Recovery cleanup; Finance returns to two members | 75563 | 607EAACBB1EC897CC3C207456ABDA16A94D174EFFC60D8F7DA7B9ECD12F2DD21 |
| M04-E05 | [m04-05-operations-membership-after-review.png](../screenshots/m04-05-operations-membership-after-review.png) | Operations contains only mover | 73789 | CF3A9D4C67A10400626AA84D87F4C4DDB6B7DB9B303B0A9D11AC62EBBCEA5319 |
| M04-E06 | [m04-06-operations-auto-review-audit.png](../screenshots/m04-06-operations-auto-review-audit.png) | Successful early end, Auto Review and Apply decision events | 70790 | EF5113556F7B5F29FF29F3773DDACD9A7671A2589B83159710B7C78FB8F58322 |
