# Architecture

## Purpose

This repository separates public safety documentation from private release preparation and sealed technical work.

## Layers

| Layer | Role | Public status |
| --- | --- | --- |
| Standards | Defines required safety, boundary, and claim-review rules. | Public-safe |
| Templates | Provides repeatable review checklists and language patterns. | Public-safe |
| Synthetic examples | Demonstrates structure without real operational facts. | Public-safe |
| Human review | Confirms whether an artifact may move from planned/scaffolded to released. | Decision outside this repo |
| Private evidence | Contains evaluations, source records, telemetry, or sensitive review material. | Not public |

## Downstream Artifacts

| Artifact type | Safety dependency |
| --- | --- |
| Model card | Must pass model safety, data exclusion, evaluation, and public-claim review. |
| Dataset card | Must pass source, consent, privacy, sanitation, and governance review. |
| Space demo | Must pass demo scope, no-live-data, no-sensitive-inference, and safety-banner review. |
| Public report | Must pass source, status, privacy, and claim review. |
| Portfolio link | Must pass evidence and monetization-readiness review before claims are used. |

## Authority

Validation confirms repository completeness. It does not approve publication, release, deployment, or claims.
