# Safety Review Gates

## Purpose

This document defines the review gates required before civic AI artifacts move from planned to scaffolded, experimental, released, or deprecated.

## Review Gates

| Gate | Required Outcome |
| --- | --- |
| Scope review | Artifact purpose, audience, and status are explicit. |
| Entity voice review | Foundation voice is preserved and not written as company marketing. |
| Data boundary review | Allowed and forbidden data classes are documented. |
| Privacy review | Donor, student, school, volunteer, customer, and private operational data are excluded. |
| Sealed IP review | Sealed YOSO-YAi LLC IP, private training corpora, and unreleased weights are excluded. |
| Misuse review | Misuse risks are described without operationally harmful detail. |
| Reliance review | Unsupported decisions and escalation paths are explicit. |
| Bias review | Source and outcome limitations are documented. |
| Release documentation review | Cards, release notes, safety notes, and companion links exist before release claims. |
| Monitoring review | Feedback, correction, pause, and deprecation paths are documented. |

## Status Changes

| Status Change | Required Gate |
| --- | --- |
| Planned to scaffolded | Scope, entity voice, boundary, and documentation review. |
| Scaffolded to experimental | Safety, privacy, misuse, bias, and monitoring review. |
| Experimental to released | Full release documentation, governance, safety, and transparency review. |
| Released to deprecated | Deprecation reason, replacement path, and public notice review. |

## Refusal Rule

If a review requires private evaluations, sealed methods, raw private data, or sensitive abuse detail, keep that material outside this public repository and publish only a reviewed public summary if approved.
