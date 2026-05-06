# Limitation Taxonomy

## Purpose

This taxonomy standardizes limitation language for public civic AI safety notes.

## Limitation Categories

| Category | Meaning | Public Note Requirement |
| --- | --- | --- |
| Scope | Artifact is designed for a specific civic, program, or documentation context. | State what the artifact covers and what it does not cover. |
| Source freshness | Public sources may become outdated. | State source date, update cadence, or freshness limits. |
| Geographic coverage | Artifact may be limited to a jurisdiction or region. | State supported geography and unsupported areas. |
| Language coverage | Artifact may support specific languages or dialects. | State supported languages and known language gaps. |
| Data coverage | Dataset or model may not cover all relevant communities, records, or contexts. | State known coverage gaps. |
| Bias | Sources or model behavior may reflect structural or collection bias. | State likely bias sources and affected groups at a high level. |
| Privacy | Artifact may only use public, synthetic, or approved sanitized data. | State private data exclusions. |
| Reliability | Outputs may be incomplete, wrong, stale, or unsuitable for decisions. | State human review expectations. |
| Safety-critical use | Artifact is not for emergency, legal, medical, or eligibility decisions unless reviewed for that use. | State forbidden reliance categories. |
| Operational security | Artifact must not expose sensitive infrastructure or live operational detail. | State security-sensitive exclusions. |

## Required Public Reliance Language

Every safety note should state whether the artifact is:

- informational;
- demonstrational;
- exploratory;
- experimental;
- production-supporting;
- deprecated.

Do not use production-supporting language unless human governance and safety review explicitly approve it.
