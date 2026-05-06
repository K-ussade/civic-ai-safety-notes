# Model Safety Checklist

## Artifact

| Field | Value |
| --- | --- |
| Model/card name | `[placeholder]` |
| Status | `Planned / Not released`, `Scaffolded / Not released`, `Released`, `Paused`, `Deprecated`, or `Private / Not public` |
| Public artifact URL | `[placeholder or Not released]` |
| Reviewer | `[human role]` |

## Checks

- [ ] Status is explicit and truthful.
- [ ] No model weights, checkpoints, private training corpora, sealed methods, private evaluations, hidden benchmarks, or production prompts are included.
- [ ] Donor data, student data, school private data, volunteer data, customer data, and private telemetry are excluded.
- [ ] Intended use is narrow and civic-context appropriate.
- [ ] Out-of-scope uses include high-stakes, surveillance, enforcement, eligibility, legal, medical, and automated decision use.
- [ ] Limitations and uncertainty are plain.
- [ ] Evaluation claims have public reviewed evidence.
- [ ] Release, deployment, and service claims have public reviewed evidence.
- [ ] Human release authority approved any `Released` status.

## Decision

| Decision | Notes |
| --- | --- |
| Approved / Revise / Blocked | `[placeholder]` |
