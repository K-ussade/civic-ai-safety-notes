# AGENTS.md

This file governs Codex work inside `civic-ai-safety-notes`.

## Repository Role

`civic-ai-safety-notes` is a public-safe safety documentation repository for civic AI release claims, model cards, dataset cards, Spaces, demos, public reports, and portfolio links.

It is not a model repository, dataset repository, live demo repository, private governance repository, incident repository, or proof of deployment.

## Authority

- The 218 Network Foundation owns Foundation-aligned public safety standards.
- Human Foundation governance, privacy, data, safety, and publication authority remains upstream.
- Codex may draft public-safe documentation, diagrams, templates, synthetic examples, and validation checks.
- Codex is not release authority, governance authority, safety authority, data authority, legal authority, or monetization authority.

## Entity Boundary Rules

- YOSO-YAi LLC and the 218 Network Foundation are distinct.
- The Foundation is not a company marketing arm, CSR project, or product line.
- YOSOR is a product of YOSO-YAi LLC, not a separate legal entity.
- Do not use Foundation language to sell company products.
- Do not use company product language to define Foundation legitimacy.

## Public Boundary

Allowed:

- safety standards;
- boundary checklists;
- status and limitation wording;
- synthetic examples;
- public-safe Mermaid diagrams;
- links to public repositories with explicit status.

Forbidden:

- donor data;
- student data;
- school private data;
- volunteer data;
- private Foundation operations;
- customer data;
- private training corpora;
- model weights;
- dataset files;
- private evaluations;
- private telemetry;
- production prompts;
- sealed YOSO-YAi LLC IP;
- secrets, tokens, and API keys;
- exact sensitive infrastructure locations;
- security-sensitive NEURONA operational details.

## Writing Rules

- Write in precise infrastructure-tech language.
- Mark status as planned, scaffolded, released, paused, deprecated, or private/not-public.
- Do not claim any model, dataset, Space, school, NEURONA deployment, report, service, audit, or outcome exists unless the public artifact and review status exist.
- Keep examples synthetic and labeled.
- Update affected graphs when review flows, boundaries, or artifact classes change.

## Validation

Before final response after edits:

1. Run `scripts/validate-safety-notes.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
