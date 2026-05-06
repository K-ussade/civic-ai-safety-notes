# Quality Gate

## Purpose

This quality gate defines the minimum checks before public safety-note changes are merged or published.

## Required Checks

| Gate | Required Outcome |
| --- | --- |
| Entity voice | Foundation safety voice is preserved and not written as company marketing. |
| Boundary | Private, sealed, donor, student, school, volunteer, customer, evaluation, telemetry, prompt, and secret material is excluded. |
| Misuse safety | Public notes avoid operationally harmful abuse detail. |
| Artifact status | GitHub and Hugging Face artifacts use planned/scaffolded/experimental/released/deprecated status accurately. |
| Reliance limits | Unsupported public reliance categories are explicit. |
| Human authority | Human Foundation authority remains upstream of publication. |
| Graph consistency | Mermaid maps match safety workflow and reliance boundaries. |
| Validation | `scripts/validate-safety-notes.sh` passes. |

## Done Means

Work is done when:

- required files are present;
- safety notes or templates are public-safe;
- Foundation independence is preserved;
- no private, sealed, or sensitive material is exposed;
- no unreleased AI artifact is claimed;
- relevant graphs are updated;
- validation passes.
