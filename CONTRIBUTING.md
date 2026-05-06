# Contributing

## Purpose

Public contributions should improve safety wording, boundary clarity, review checklists, risk-register structure, graph readability, and validation coverage.

## Contribution Rules

| Area | Rule |
| --- | --- |
| Examples | Use synthetic or placeholder material only. |
| Sensitive data | Do not submit donor, student, school, volunteer, customer, partner, telemetry, incident, legal, private operations, or secret material. |
| Claims | Do not add fake release, evaluation, deployment, model, dataset, Space, report, service, grant, or impact claims. |
| Status | Label planned, scaffolded, released, paused, deprecated, and private/not-public states explicitly. |
| Entity voice | Preserve Foundation independence from YOSO-YAi LLC and YOSOR. |
| Graphs | Update Mermaid maps when safety review or boundary behavior changes. |

## Pull Request Checklist

- [ ] The change is public-safe.
- [ ] Examples are synthetic or placeholder-based.
- [ ] Forbidden data and sealed IP are absent.
- [ ] No unreleased model, dataset, Space, report, service, school, NEURONA, or deployment claim is introduced.
- [ ] Affected docs, graphs, templates, and validation checks are updated.
- [ ] `scripts/validate-safety-notes.sh` passes.

## Security And Privacy

Do not report secrets, private records, sensitive incidents, or security-sensitive operational details in public issues. Use the private security path in `SECURITY.md`.
