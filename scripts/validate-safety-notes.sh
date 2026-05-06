#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CHANGELOG.md"
  "docs/architecture.md"
  "docs/public-private-boundaries.md"
  "docs/forbidden-data.md"
  "docs/model-release-safety.md"
  "docs/dataset-release-safety.md"
  "docs/space-demo-safety.md"
  "docs/claim-review-standard.md"
  "docs/limitations-language-library.md"
  "docs/civic-ai-risk-register.md"
  "docs/governance-review-flow.md"
  "docs/graphs/safety-system-map.md"
  "docs/graphs/public-private-boundary-map.md"
  "docs/graphs/model-safety-review-flow.md"
  "docs/graphs/dataset-safety-review-flow.md"
  "docs/graphs/space-safety-review-flow.md"
  "docs/graphs/claim-review-flow.md"
  "templates/model-safety-checklist.md"
  "templates/dataset-safety-checklist.md"
  "templates/space-safety-checklist.md"
  "templates/public-claim-review.md"
  "templates/limitation-language.md"
  "templates/risk-entry.md"
  "examples/README.md"
  "examples/synthetic-risk-register-example.md"
  "scripts/validate-safety-notes.sh"
)

required_graph_sections=(
  "## Purpose"
  "## Mermaid Diagram"
  "## Interpretation Notes"
  "## Boundary Notes"
  "## Follow-Up Actions"
)

missing=0

printf "Civic AI Safety Notes Validation\n"
printf "Root: %s\n\n" "$ROOT_DIR"

for file in "${required_files[@]}"; do
  if [ -f "$ROOT_DIR/$file" ]; then
    printf "PASS  %s\n" "$file"
  else
    printf "FAIL  %s\n" "$file"
    missing=$((missing + 1))
  fi
done

printf "\nGraph Structure Checks\n"

for graph in "$ROOT_DIR"/docs/graphs/*.md; do
  [ -f "$graph" ] || continue
  rel="${graph#$ROOT_DIR/}"
  for section in "${required_graph_sections[@]}"; do
    if grep -qF "$section" "$graph"; then
      printf "PASS  %s contains %s\n" "$rel" "$section"
    else
      printf "FAIL  %s missing %s\n" "$rel" "$section"
      missing=$((missing + 1))
    fi
  done
done

printf "\nBoundary Language Checks\n"

for file in "$ROOT_DIR"/README.md "$ROOT_DIR"/docs/public-private-boundaries.md "$ROOT_DIR"/docs/forbidden-data.md "$ROOT_DIR"/examples/synthetic-risk-register-example.md; do
  rel="${file#$ROOT_DIR/}"
  if grep -qF "donor data" "$file" && grep -qF "student data" "$file" && grep -qF "sealed YOSO-YAi LLC IP" "$file" && grep -qF "security-sensitive NEURONA operational details" "$file"; then
    printf "PASS  %s contains required forbidden-data language\n" "$rel"
  else
    printf "FAIL  %s missing required forbidden-data language\n" "$rel"
    missing=$((missing + 1))
  fi
done

printf "\nStatus Language Checks\n"

if grep -R "Planned / Not released" "$ROOT_DIR"/README.md "$ROOT_DIR"/docs "$ROOT_DIR"/templates >/dev/null && \
   grep -R "Scaffolded / Not released" "$ROOT_DIR"/README.md "$ROOT_DIR"/docs "$ROOT_DIR"/templates >/dev/null && \
   grep -R "Released" "$ROOT_DIR"/docs "$ROOT_DIR"/templates >/dev/null && \
   grep -R "Private / Not public" "$ROOT_DIR"/docs "$ROOT_DIR"/templates >/dev/null; then
  printf "PASS  required status vocabulary is present\n"
else
  printf "FAIL  required status vocabulary is incomplete\n"
  missing=$((missing + 1))
fi

printf "\nSynthetic Example Checks\n"

if grep -Eiq "synthetic|not a real" "$ROOT_DIR/examples/synthetic-risk-register-example.md"; then
  printf "PASS  examples/synthetic-risk-register-example.md is clearly synthetic\n"
else
  printf "FAIL  examples/synthetic-risk-register-example.md lacks synthetic non-claim language\n"
  missing=$((missing + 1))
fi

if [ "$missing" -eq 0 ]; then
  printf "\nResult: PASS - safety notes repository is complete.\n"
  exit 0
fi

printf "\nResult: FAIL - %s required check(s) failed.\n" "$missing"
exit 1
