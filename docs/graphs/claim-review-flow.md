# Claim Review Flow

## Purpose

This graph shows how public technical claims move from draft wording to reviewed status.

## Mermaid Diagram

```mermaid
flowchart LR
  claim["Draft public claim"]:::workflow --> classify["Classify claim type"]:::workflow
  classify --> status["Attach status label"]:::public
  status --> evidence["Check public evidence"]:::workflow
  evidence --> boundary["Boundary review"]:::private
  boundary --> entity["Entity and voice review"]:::foundation
  entity --> approval["Human approval"]:::foundation
  approval --> publish["Publish or link"]:::release
  evidence --> revise["Revise to planned/scaffolded wording if evidence is missing"]:::public
  boundary --> block["Block if forbidden data or sealed IP appears"]:::sealed

  classDef foundation fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef private fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef sealed fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
```

## Interpretation Notes

- Evidence and boundary review happen before publication.
- Missing evidence does not require deletion when wording can be safely downgraded to planned or scaffolded.
- Human approval remains required for released, deployed, evaluated, service, or impact claims.

## Boundary Notes

- Claims must not expose donor data, student data, volunteer data, customer data, private operations, private telemetry, sealed IP, or security-sensitive NEURONA operational details.
- Foundation claims cannot be used as company marketing proof.

## Follow-Up Actions

- Apply this flow to README, report, profile, and portfolio copy updates.
- Keep claim language synchronized with roadmap status labels.
