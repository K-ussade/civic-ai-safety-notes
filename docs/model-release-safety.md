# Model Release Safety

## Purpose

This standard defines public-safe review requirements before a model card or model-release claim can be published.

## Required Review Areas

| Area | Required answer |
| --- | --- |
| Status | Is the model planned, scaffolded, released, paused, deprecated, or private/not-public? |
| Evidence | Does a reviewed public artifact exist for every release claim? |
| Training data | Are private training corpora, donor data, student data, customer data, and sealed YOSO-YAi LLC IP excluded? |
| Evaluation | Are public evaluation summaries reviewed and free of private benchmarks? |
| Intended use | Is the civic use narrow, non-coercive, and clearly bounded? |
| Out-of-scope use | Are unsupported, high-stakes, surveillance, eligibility, enforcement, and automated decision uses forbidden? |
| Limitations | Are uncertainty, coverage, and non-advisory limits stated plainly? |
| Deployment | Does the text avoid claiming deployment unless deployment is public and approved? |

## Required Wording

- `Status: Planned / Not released` for ideas or future cards.
- `Status: Scaffolded / Not released` for templates or companion docs.
- `Status: Released` only when the public model artifact exists and human review approved publication.

## Non-Claims

Do not imply that a model has been trained, evaluated, uploaded, benchmarked, deployed, or approved unless each claim has public evidence and documented review.
