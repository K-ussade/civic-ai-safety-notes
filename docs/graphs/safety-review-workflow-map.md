# Safety Review Workflow Map

## Purpose

This graph shows how civic AI safety notes move from artifact scope through boundary, privacy, misuse, reliance, governance, and publication review.

## Mermaid Diagram

```mermaid
flowchart TB
  subgraph authority["Foundation Authority"]
    human["Human safety and governance authority"]:::authority
    governance["foundation-governance"]:::foundation
    transparency["foundation-transparency-reports"]:::foundation
  end

  subgraph artifact["Artifact Scope"]
    planned["Planned model, dataset, Space, or companion repo"]:::release
    scope["Intended use and audience"]:::workflow
    status["Artifact status"]:::workflow
  end

  subgraph review["Safety Review"]
    boundary["Data and sealed-IP boundary review"]:::risk
    privacy["Privacy review"]:::risk
    misuse["Misuse review<br/>no operational detail"]:::risk
    reliance["Public reliance review"]:::risk
    bias["Bias and limitation review"]:::workflow
  end

  subgraph publication["Public Safety Documentation"]
    note["Safety note"]:::public
    card["Card or Space README companion"]:::release
    report["Transparency summary<br/>after release or review"]:::foundation
  end

  human ==> scope
  governance --> scope
  planned --> scope
  scope --> status
  status --> boundary
  boundary --> privacy
  privacy --> misuse
  misuse --> reliance
  reliance --> bias
  bias --> note
  note --> card
  card -. reviewed release summary .-> report
  transparency --> report

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef foundation fill:#fff3d7,stroke:#9a6b00,color:#463100;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Safety review begins while artifacts are planned, before public release claims.
- Boundary and privacy review happen before misuse, reliance, and limitation language is published.
- Transparency reporting is downstream from reviewed safety documentation.

## Boundary Notes

- Private evaluations, sealed methods, sensitive abuse details, production prompts, and private telemetry stay outside this public repository.
- Safety notes can discuss risk categories without publishing operational misuse details.
- Cards and Space READMEs need safety companions before public reliance is invited.

## Follow-Up Actions

- Link model, dataset, and Space card repositories after they are scaffolded.
- Add artifact-specific safety notes only after human review.
- Update this map when release status gates change.
