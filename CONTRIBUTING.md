# Contributing

## Purpose

Public contributions should improve safety-note clarity, limitation categories, review gates, public reliance boundaries, and artifact safety standards.

## Contribution Rules

| Area | Rule |
| --- | --- |
| Sensitive data | Do not submit donor private data, student data, school private data, volunteer private data, customer data, secrets, logs, private telemetry, private evaluations, or sealed IP. |
| Abuse detail | Do not include operational misuse details, exploit steps, or content that improves harmful use. |
| Artifact claims | Do not claim a model, dataset, or Space is released unless public cards, release notes, safety notes, companion links, and governance review status exist. |
| Evaluations | Do not publish private evaluations, raw test sets, red-team notes, or unreleased benchmarks. |
| Entity voice | Use Foundation safety voice. Do not write safety notes as company marketing or YOSOR product documentation. |
| Graphs | Update Mermaid maps when safety workflow, reliance boundary, or artifact-status behavior changes. |

## Pull Request Checklist

- [ ] The change is public-safe.
- [ ] Foundation independence remains clear.
- [ ] Private, sealed, donor, student, school, volunteer, customer, evaluation, telemetry, prompt, and secret material is excluded.
- [ ] Misuse discussion does not include operationally harmful detail.
- [ ] Artifact statuses are accurate.
- [ ] Affected graphs and quality gates are updated.
- [ ] `scripts/validate-safety-notes.sh` passes.

## Security And Privacy

Do not report secrets, private records, sensitive incidents, or security-sensitive operational details in public issues. Use the private security path in `SECURITY.md`.
