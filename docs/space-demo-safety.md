# Space Demo Safety

## Purpose

This standard defines public-safe review requirements before a Hugging Face Space, demo README, or demo claim can be published.

## Required Review Areas

| Area | Required answer |
| --- | --- |
| Status | Is the Space planned, scaffolded, released, paused, deprecated, or private/not-public? |
| Demo scope | Is the demo educational, synthetic, or documentation-only? |
| Data | Does the demo avoid donor data, student data, school private data, volunteer data, private telemetry, customer data, and private operations? |
| Model dependency | Does the demo avoid implying a live model unless a reviewed public model exists? |
| Dataset dependency | Does the demo avoid implying a live dataset unless a reviewed public dataset exists? |
| User input | Are user-input warnings, data retention limits, and no-sensitive-input rules visible? |
| Safety banner | Is the status and limitation banner shown before interaction? |
| Operational risk | Does the demo avoid security-sensitive NEURONA operational details and exact sensitive infrastructure locations? |

## Safe Demo Language

- `This is a planned scaffold, not a live Space.`
- `This demo does not process real donor, student, school, volunteer, customer, or operational data.`
- `No live model, dataset, deployment, or civic service is claimed by this scaffold.`

## Non-Claims

Do not create runnable app code in this repository unless it is explicitly placeholder-only and cannot be mistaken for a deployed civic system.
