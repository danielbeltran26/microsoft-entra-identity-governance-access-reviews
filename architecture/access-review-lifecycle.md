# Access review lifecycle

```mermaid
flowchart TD
    A[Membership baseline] --> B[Scoped access review]
    B --> C{Decision}
    C -->|Approve| D[Retain membership]
    C -->|Deny| E[Remove membership]
    C -->|No response| F[Configured fallback]
    D --> G[Independent membership validation]
    E --> G
    F --> G
    H[Control group baseline] --> I[Unchanged membership check]
    G --> J[Results and exceptions]
    I --> J
```

This diagram describes the planned process. It does not represent completed execution. The control group is excluded from reviews; its membership is compared independently. Exception expiry and follow-up are managed through a documented process.
