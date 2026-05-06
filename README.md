# Civic AI Safety Notes

## Purpose

This repository is a public-safe safety and boundary documentation repo for civic AI releases, model cards, dataset cards, Spaces, demos, reports, and public technical claims.

It defines review language, forbidden-data exclusions, limitation wording, risk-register patterns, and Mermaid review flows. It does not prove that any model, dataset, Space, school deployment, NEURONA system, public report, service, or civic AI release exists.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded / published |
| Entity owner | 218 Network Foundation |
| Authority | Human Foundation governance, safety, privacy, and release review authority |
| Canonical source | GitHub public standards and safety-note scaffold |
| GitHub role | Public safety documentation and review-standard source |
| Hugging Face role | Companion safety language for future reviewed model cards, dataset cards, and Spaces |
| Portfolio role | Public proof surface for safety, boundary, and claim-review discipline after Alexandra review |
| Public boundary | Standards, templates, synthetic examples, and public-safe diagrams only |

## Related Public Repositories

| Repository | Relationship |
| --- | --- |
| [`K-ussade`](https://github.com/K-ussade/K-ussade) | Alexandra Caussade's public GitHub profile and status vocabulary. |
| [`foundation-graph-kit`](https://github.com/K-ussade/foundation-graph-kit) | Mermaid graph classes and public-safe graph rules. |
| [`foundation-public-roadmap`](https://github.com/K-ussade/foundation-public-roadmap) | Public status ledger for planned, scaffolded, and released surfaces. |
| [`foundation-doc-templates`](https://github.com/K-ussade/foundation-doc-templates) | General documentation templates and publication review gates. |
| [`foundation-model-cards`](https://github.com/K-ussade/foundation-model-cards) | Model-card structure that must pass safety review before release claims. |
| [`foundation-dataset-cards`](https://github.com/K-ussade/foundation-dataset-cards) | Dataset-card structure that must pass privacy and data-governance review. |

## Documentation Map

| Path | Role |
| --- | --- |
| `docs/architecture.md` | Repository authority, review layers, and downstream artifact relationship. |
| `docs/public-private-boundaries.md` | Public, private, sealed, and mixed boundary rules. |
| `docs/forbidden-data.md` | Data and operational material that must never enter public artifacts. |
| `docs/model-release-safety.md` | Model-card and model-release safety review standard. |
| `docs/dataset-release-safety.md` | Dataset-card and dataset-release safety review standard. |
| `docs/space-demo-safety.md` | Hugging Face Space and demo safety review standard. |
| `docs/claim-review-standard.md` | Public claim review standard for reports, portfolio links, and repository copy. |
| `docs/limitations-language-library.md` | Safe wording library for planned, scaffolded, released, paused, deprecated, and private/not-public status. |
| `docs/civic-ai-risk-register.md` | Risk register fields and severity rules. |
| `docs/governance-review-flow.md` | Human review flow before publication or release claims. |
| `docs/graphs/` | Public-safe Mermaid maps for safety, boundary, and artifact review flows. |
| `templates/` | Safety checklists and reusable review templates. |
| `examples/` | Synthetic examples only. |

## Public Boundary

Allowed:

- public-safe safety standards;
- reusable checklists and templates;
- limitation and status wording;
- synthetic examples clearly labeled synthetic;
- public-safe Mermaid diagrams;
- links to public artifacts with explicit status labels.

Forbidden:

- donor data;
- student data;
- school private data;
- volunteer data;
- private Foundation operations;
- customer data;
- private training corpora;
- model weights or checkpoints;
- datasets or sanitized samples;
- private evaluations;
- private telemetry;
- production prompts;
- sealed YOSO-YAi LLC IP;
- secrets, tokens, and API keys;
- exact sensitive infrastructure locations;
- security-sensitive NEURONA operational details;
- unreviewed claims about models, datasets, Spaces, reports, schools, deployments, services, outcomes, grants, or impact.

## Non-Claims

This repository does not claim that a model, dataset, Space, public report, school deployment, NEURONA deployment, civic service, audit, evaluation, or release has occurred. It creates the safety documentation system required before such claims can be reviewed.

## Validation

Run:

```bash
scripts/validate-safety-notes.sh
```

## First Milestone

Safety notes v0.1 is complete when the standards, checklists, risk-register example, status language, public-safe graphs, and validation script are reviewed by human Foundation authority.
