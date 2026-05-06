# AGENTS.md

This file governs Codex work inside `civic-ai-safety-notes`.

## Repository Role

`civic-ai-safety-notes` is the public safety documentation scaffold for future Foundation civic AI artifacts. It is not a model repository, dataset repository, demo repository, private evaluation workspace, incident room, or sealed development workspace.

## Authority

- The 218 Network Foundation owns this safety documentation surface.
- Human Foundation safety and governance authority remains upstream of publication.
- Codex may draft templates, review gates, limitation taxonomies, graphs, and validation checks.
- Codex is not safety, governance, legal, release, or publication authority.

## Entity Boundary Rules

- The Foundation is independent from YOSO-YAi LLC.
- The Foundation is not a YOSO-YAi marketing arm, CSR project, or product line.
- YOSOR is a product of YOSO-YAi LLC, not a Foundation product.
- YOSO-YAi LLC and YOSOR references must be boundary context only.

## Public Boundary

Allowed:

- public safety note templates;
- limitation taxonomy;
- review gate documentation;
- public reliance boundaries;
- public artifact safety standards;
- public Mermaid safety maps.

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

## Writing Rules

- Write in a precise public-safety and civic technology voice.
- Use concrete review gates and limitation categories.
- Mark future artifacts as planned unless public release evidence exists.
- Do not invent models, datasets, Spaces, evaluations, benchmarks, safety reviews, incidents, endorsements, or releases.
- Do not include sensitive abuse instructions or details that improve misuse.
- Update graphs when safety workflow, reliance boundaries, artifact status, or public/private boundary behavior changes.

## Validation

Before final response after edits:

1. Run `scripts/validate-safety-notes.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
