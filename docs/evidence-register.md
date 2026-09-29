# Evidence register

Each identifier maps to one purpose and filename. Preserve existing evidence; allocate a new identifier to a new observation.

| ID | File | Observation | Bytes | SHA256 |
|---|---|---|---:|---|
| M01-E01 | [Delegation baseline](../screenshots/m01-01-access-review-delegation-baseline.png) | Group-owner review management set to No | 86259 | FEAE4E88875C2B0FC9E6C71867EEF1F92C54E20780DB23CAD596D75F0C1B018B |
| M01-E02 | [Review inventory](../screenshots/m01-02-access-review-inventory-baseline.png) | No group and app reviews displayed | 79927 | 8B6523B253DE9A6E7E05EF35BE6527172EC24DCC89EC7C67AE0AAE19BD3625AB |

Hashes establish file identity, not correctness of the tenant configuration. Subscription and group-name checks are recorded as observations rather than retained screenshots.

## M2 membership baseline

Observation date: 30 September 2026 (Europe/London). The operator confirmed the portal membership lists and supplied these local validation results.

| ID | File | Observation | Bytes | SHA256 |
|---|---|---|---:|---|
| M02-E01 | [Finance baseline](../screenshots/m02-01-finance-membership-baseline.png) | Four direct members: finance, mover, leaver, exception | 81545 | 3F50681794E244FC8ABF168036FD5C98BA2BE034B01532E5DBDF666E5BAC4004 |
| M02-E02 | [Operations baseline](../screenshots/m02-02-operations-membership-baseline.png) | Two direct members: mover and leaver | 76800 | FF99AE28F56F8F4B61D25598043BF34290101E7F2CEC51154CD75F1A97D74CA4 |
| M02-E03 | [Control baseline](../screenshots/m02-03-control-membership-baseline.png) | Two direct members: finance and mover | 76421 | 019A1FC55FF5150F30D7D18B744798773DCD191757ABA4ED4F4D87CC3CE71D28 |

Validation reported three expected files, three nonempty files, three unique hashes and zero additional M02 PNG files. It did not modify files or tenant state. Hash validation does not establish screenshot content, ownership, account state, licence assignment or MFA enforcement. Those setup observations are separately identified as operator confirmations in the M2 baseline.
