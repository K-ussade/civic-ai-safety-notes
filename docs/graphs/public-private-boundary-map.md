# Public/Private Boundary Map

## Purpose

This graph shows which civic AI safety materials may be public and which must remain private or sealed.

## Mermaid Diagram

```mermaid
flowchart TB
  subgraph public["Public-Safe Materials"]
    standards["Safety standards"]:::public
    templates["Checklist templates"]:::public
    synthetic["Synthetic examples"]:::public
    status["Status language"]:::public
  end

  subgraph private["Private Materials"]
    reviews["Private review records"]:::private
    telemetry["Private telemetry"]:::private
    operations["Private Foundation operations"]:::private
  end

  subgraph sealed["Sealed Materials"]
    weights["Model weights and checkpoints"]:::sealed
    corpora["Private training corpora"]:::sealed
    ip["Sealed YOSO-YAi LLC IP"]:::sealed
    neurona["Security-sensitive NEURONA details"]:::sealed
  end

  standards --> status
  templates --> synthetic
  reviews -. blocked from public .-> public
  telemetry -. blocked from public .-> public
  operations -. blocked from public .-> public
  weights -. blocked from public .-> public
  corpora -. blocked from public .-> public
  ip -. blocked from public .-> public
  neurona -. blocked from public .-> public

  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef private fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef sealed fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Public content is limited to standards, templates, synthetic examples, and status language.
- Private and sealed materials cannot be excerpted into public safety notes.
- Mixed artifacts must be split before publication.

## Boundary Notes

- Donor data, student data, volunteer data, customer data, private operations, private telemetry, model weights, private training corpora, and sealed YOSO-YAi LLC IP are forbidden.
- Security-sensitive NEURONA operational details remain sealed or private.

## Follow-Up Actions

- Add path-level boundary rules if public and private artifacts are ever split across repos.
- Keep forbidden-data lists synchronized with release repositories.
