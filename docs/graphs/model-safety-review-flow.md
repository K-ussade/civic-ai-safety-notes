# Model Safety Review Flow

## Purpose

This graph shows the public-safe review flow before a model card can claim released status.

## Mermaid Diagram

```mermaid
flowchart LR
  draft["Model card draft"]:::workflow --> status["Status label"]:::public
  status --> data["Training data exclusion review"]:::private
  data --> eval["Evaluation summary review"]:::workflow
  eval --> use["Intended and forbidden use review"]:::workflow
  use --> claims["Public claim review"]:::workflow
  claims --> authority["Human release authority"]:::foundation
  authority --> released["Released status allowed only with public artifact"]:::release
  data --> blocked["Blocked if private corpora, student data, donor data, customer data, or sealed IP appear"]:::sealed

  classDef foundation fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef private fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef sealed fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
```

## Interpretation Notes

- Released status depends on public artifact evidence and human authority.
- Data exclusion review happens before evaluation and claim wording are publicized.
- Blocked material cannot be summarized into public text.

## Boundary Notes

- Private training corpora, model weights, private evaluations, donor data, student data, customer data, and sealed YOSO-YAi LLC IP are excluded.
- The flow does not claim that any model exists or has been released.

## Follow-Up Actions

- Reuse this flow in model-card companion documentation.
- Add artifact-specific evidence links only after review.
