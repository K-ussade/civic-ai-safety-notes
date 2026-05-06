# Artifact Safety Standard

## Purpose

This standard defines minimum public safety documentation by artifact type.

## Model Safety Requirements

| Requirement | Standard |
| --- | --- |
| Intended use | State approved use cases and audience. |
| Out-of-scope use | State unsupported decisions and forbidden reliance. |
| Data boundary | Summarize public, synthetic, sanitized, excluded, and private data classes. |
| Evaluation status | State whether functional, safety, bias, and privacy evaluations are planned, draft, reviewed, or public. |
| Limitations | Include scope, freshness, language, geography, bias, and reliability limits. |
| Monitoring | State feedback, correction, pause, and deprecation paths. |

## Dataset Safety Requirements

| Requirement | Standard |
| --- | --- |
| Source | State public source classes and review date. |
| PII statement | State whether PII is excluded, removed, aggregated, synthetic, or unknown. |
| Forbidden uses | Include re-identification, surveillance, enforcement, eligibility, or targeting restrictions where relevant. |
| Maintenance | State update cadence, correction process, and deprecation conditions. |
| Bias and coverage | State source coverage and known gaps. |

## Space Demo Safety Requirements

| Requirement | Standard |
| --- | --- |
| Demo scope | State what the demo does and does not do. |
| Input boundary | Tell users not to enter private or sensitive data. |
| Dependencies | List model, dataset, and code dependencies by status. |
| Logging | State whether inputs or outputs are stored. |
| Safety limits | State unsupported decisions and failure modes. |
| Feedback | Provide public correction and safety concern path. |

## GitHub Companion Safety Requirements

| Requirement | Standard |
| --- | --- |
| Status | Planned, scaffolded, experimental, released, or deprecated. |
| Boundary | Explicit allowed and forbidden material. |
| Cards and release links | Link only to released artifacts or clearly planned registries. |
| Graphs | Include workflow or boundary maps when release behavior changes. |
