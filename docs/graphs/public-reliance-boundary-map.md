# Public Reliance Boundary Map

## Purpose

This graph shows the default boundary between allowed public informational use and unsupported reliance for civic AI artifacts.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph allowed["Default Allowed Public Use"]
    info["Informational reference"]:::public
    demo["Demonstration"]:::public
    sourceLinks["Source-linked navigation"]:::public
    synthetic["Synthetic examples"]:::public
    reviewedSamples["Reviewed sanitized samples"]:::risk
  end

  subgraph unsupported["Unsupported Reliance"]
    emergency["Emergency response"]:::risk
    legal["Legal advice"]:::risk
    medical["Medical advice"]:::risk
    eligibility["Benefits or eligibility decisions"]:::risk
    education["Education placement decisions"]:::risk
    enforcement["Enforcement or surveillance"]:::risk
    privateDecision["Individualized decisions using private data"]:::sealed
    officialAction["Official government action"]:::risk
  end

  subgraph review["Review And Escalation"]
    human["Human review"]:::authority
    official["Official public source"]:::authority
    correction["Public correction path"]:::workflow
  end

  info --> sourceLinks
  demo --> sourceLinks
  synthetic --> sourceLinks
  reviewedSamples --> sourceLinks
  sourceLinks --> correction

  emergency -. escalate .-> official
  legal -. escalate .-> human
  medical -. escalate .-> human
  eligibility -. escalate .-> official
  education -. escalate .-> human
  enforcement -. unsupported .-> human
  privateDecision -. forbidden public input .-> human
  officialAction -. requires official authority .-> official

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- Default public use is informational or demonstrational.
- High-stakes decisions require official sources or human review.
- Public demos must not accept private data for individualized decisions.

## Boundary Notes

- Emergency, legal, medical, eligibility, education placement, enforcement, and official action use cases are unsupported unless a later reviewed release explicitly changes scope.
- Sanitized public samples require review before publication.
- Private data must not be entered into public demos or examples.

## Follow-Up Actions

- Add this map to Space companion docs when `foundation-spaces` is scaffolded.
- Link artifact-specific safety notes after review.
- Revisit reliance language before any experimental release.
