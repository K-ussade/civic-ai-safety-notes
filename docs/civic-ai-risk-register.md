# Civic AI Risk Register

## Purpose

This document defines a public-safe risk-register structure for civic AI artifacts.

## Required Fields

| Field | Requirement |
| --- | --- |
| Risk ID | Stable identifier such as `RISK-001`. |
| Artifact type | Model card, dataset card, Space, report, portfolio link, or repository copy. |
| Status | Planned, scaffolded, released, paused, deprecated, or private/not-public. |
| Risk statement | Public-safe description without private operational facts. |
| Affected boundary | Public, private, sealed, or mixed. |
| Severity | Low, medium, high, or blocked. |
| Mitigation | Public-safe mitigation or review requirement. |
| Evidence required | Public artifact, review note, source citation, or human approval. |
| Owner | Human review role, not a private individual unless already public. |
| Review cadence | Before release, quarterly, on material change, or on withdrawal. |

## Severity Rules

| Severity | Meaning |
| --- | --- |
| Low | Wording or documentation risk with simple mitigation. |
| Medium | Claim, boundary, or artifact ambiguity requiring review. |
| High | Privacy, safety, governance, or reliance risk requiring human approval before publication. |
| Blocked | Contains or depends on forbidden data, sealed IP, private operations, or unsupported release claims. |

## Public-Safe Rule

The public register may describe risk categories and review needs. It must not expose donor data, student data, school private data, volunteer data, customer data, private Foundation operations, private telemetry, private evaluations, sealed YOSO-YAi LLC IP, or security-sensitive NEURONA operational details.
