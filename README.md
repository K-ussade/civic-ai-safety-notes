# Civic AI Safety Notes

## Purpose

This repository is the public safety-note scaffold for future 218 Network Foundation civic AI models, datasets, and Spaces. It defines safety-note templates, limitation taxonomy, public reliance boundaries, review gates, and safety workflow maps before artifacts are released.

This repository does not contain model weights, datasets, private evaluations, sealed methods, production prompts, sensitive abuse details, private telemetry, or live demo code.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded |
| Entity owner | 218 Network Foundation |
| Authority | Foundation safety and governance authority |
| Canonical source | GitHub public scaffold for approved public safety notes; private evaluations and sensitive review records must stay outside this repo |
| GitHub role | Public safety-note and limitation standard |
| Hugging Face role | Companion safety documentation for future reviewed models, datasets, and Spaces |
| Public surface | Civic AI safety, limitation, reliance, and release-readiness documentation |

## Relationship To Public Release Repositories

| Repository | Relationship |
| --- | --- |
| [`foundation-governance`](https://github.com/K-ussade/foundation-governance) | Defines governance authority and publication boundaries. |
| [`foundation-transparency-reports`](https://github.com/K-ussade/foundation-transparency-reports) | Publishes reviewed public summaries after releases or safety reviews exist. |
| `foundation-model-cards` | Planned companion for future model cards. |
| `foundation-dataset-cards` | Planned companion for future dataset cards. |
| `foundation-spaces` | Planned companion for future demo safety boundaries. |

## First Files

| Path | Role |
| --- | --- |
| `notes/README.md` | Safety note index and status rules. |
| `templates/safety-note.md` | Public safety note template for models, datasets, Spaces, and GitHub companions. |
| `docs/review-gates.md` | Safety, privacy, governance, and release review gates. |
| `docs/limitation-taxonomy.md` | Standard limitation categories for civic AI artifacts. |
| `docs/public-reliance-boundary.md` | Public reliance rules and unsupported-use boundaries. |
| `docs/artifact-safety-standard.md` | Safety requirements by artifact type. |
| `docs/public-private-boundary.md` | Explicit allowed and forbidden material. |
| `docs/quality-gate.md` | Required checks before publication. |
| `docs/graphs/` | Mermaid maps for safety review and public reliance boundaries. |

## Public Boundary

Allowed:

- public safety note templates;
- public limitation taxonomy;
- public reliance boundaries;
- public release review gates;
- public safety summaries after review;
- links to released artifacts with public cards and review status.

Forbidden:

- sealed model methods;
- private evaluations;
- sensitive abuse details with operational value;
- donor private data;
- student data;
- school private data;
- volunteer private data;
- private Foundation operations;
- customer data;
- unreleased model weights;
- private training corpora;
- secrets, tokens, and API keys;
- private telemetry;
- production prompts;
- security-sensitive NEURONA operational details.

## Non-Claims

This scaffold does not claim that models, datasets, Spaces, evaluations, safety reviews, or demos have been released. It creates the safety language and review structure required before public artifacts move beyond planned status.

## Validation

Run:

```bash
scripts/validate-safety-notes.sh
```

## First Milestone

Safety notes v0.1 is complete when the template, limitation taxonomy, reliance boundary, artifact safety standard, review gates, quality gate, and Mermaid maps are reviewed by human Foundation authority.
