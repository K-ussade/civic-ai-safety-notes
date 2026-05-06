# Space Safety Review Flow

## Purpose

This graph shows the review flow before a Hugging Face Space or demo can move beyond planned/scaffolded status.

## Mermaid Diagram

```mermaid
flowchart LR
  plan["Space idea or scaffold"]:::workflow --> status["Status: Planned / Not released"]:::public
  status --> scope["Demo scope review"]:::workflow
  scope --> data["No live private data review"]:::private
  data --> model["Model/dataset dependency review"]:::workflow
  model --> banner["Safety banner review"]:::public
  banner --> authority["Human publication authority"]:::foundation
  authority --> release["Released demo only if public-safe artifact exists"]:::release
  data --> blocked["Blocked if donor, student, school, volunteer, customer, telemetry, or NEURONA-sensitive details appear"]:::sealed

  classDef foundation fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef private fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef sealed fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
```

## Interpretation Notes

- Planned Space scaffolds must remain clear about not being live demos.
- Safety banners are required before any interactive public demo.
- Live model or dataset claims require separately reviewed public artifacts.

## Boundary Notes

- Spaces must not collect or process donor data, student data, school private data, volunteer data, customer data, private telemetry, or private operations.
- Security-sensitive NEURONA operational details are blocked.

## Follow-Up Actions

- Reuse this flow in `foundation-spaces`.
- Add demo-specific checklists before enabling runnable code.
