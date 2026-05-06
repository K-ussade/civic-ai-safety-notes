# Dataset Safety Review Flow

## Purpose

This graph shows the public-safe review flow before a dataset card can claim released status.

## Mermaid Diagram

```mermaid
flowchart LR
  draft["Dataset card draft"]:::workflow --> status["Status label"]:::public
  status --> source["Source and license review"]:::workflow
  source --> privacy["Privacy and PII exclusion review"]:::private
  privacy --> sanitation["Sanitation review"]:::workflow
  sanitation --> governance["Human data governance review"]:::foundation
  governance --> release["Released status allowed only with public artifact"]:::release
  privacy --> blocked["Blocked if donor, student, school private, volunteer, customer, or telemetry data appears"]:::sealed

  classDef foundation fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef private fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef sealed fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
```

## Interpretation Notes

- Dataset release requires source, privacy, sanitation, and governance review.
- Released status is not allowed for templates or planned datasets.
- Blocked data cannot be transformed into public examples.

## Boundary Notes

- Donor data, student data, school private data, volunteer data, customer data, private telemetry, raw data, and unapproved sanitized samples are excluded.
- The flow does not claim that any dataset exists or has been released.

## Follow-Up Actions

- Reuse this flow in dataset-card companion documentation.
- Add public dataset links only after release approval.
