# Safety System Map

## Purpose

This graph shows how safety standards, artifact checklists, risk review, and human authority connect without claiming live releases.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph authority["Foundation Human Authority"]
    governance["Governance review"]:::foundation
    safety["Safety review"]:::workflow
    privacy["Privacy review"]:::private
  end

  subgraph repo["civic-ai-safety-notes"]
    standards["Safety standards"]:::public
    checklists["Review checklists"]:::public
    risk["Risk register pattern"]:::workflow
    limitations["Limitation language"]:::public
    validator["Validation script"]:::workflow
  end

  subgraph artifacts["Future Public Artifacts"]
    models["Model cards"]:::release
    datasets["Dataset cards"]:::release
    spaces["Space demos"]:::release
    reports["Public reports"]:::release
  end

  governance --> standards
  safety --> checklists
  privacy --> checklists
  standards --> limitations
  standards --> risk
  checklists --> validator
  risk --> validator
  validator --> models
  validator --> datasets
  validator --> spaces
  validator --> reports

  classDef foundation fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef private fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
```

## Interpretation Notes

- The repository supplies standards and checklists.
- Human authority remains upstream of any release or claim.
- Validation checks structure and public-safety language only.

## Boundary Notes

- Private review records, evaluations, data, and sealed IP stay outside this repository.
- Release nodes represent future reviewed artifacts, not live deployments.
- Hugging Face is a release surface only.

## Follow-Up Actions

- Link reviewed artifacts only after they exist.
- Expand risk categories as artifact classes mature.
- Re-run validation after any graph or checklist change.
