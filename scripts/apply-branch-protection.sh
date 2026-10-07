#!/usr/bin/env bash
set -euo pipefail

REPO="${1:-}"
BRANCH="${2:-main}"
RULESET_NAME="require-ci-clean-build"

if ! command -v gh >/dev/null 2>&1; then
  echo "Error: GitHub CLI (gh) is required." >&2
  exit 1
fi

if [[ -z "$REPO" ]]; then
  REPO="$(gh repo view --json nameWithOwner --jq '.nameWithOwner')"
fi

echo "Applying branch protection for ${REPO} on ${BRANCH}..."

gh repo edit "$REPO" --enable-auto-merge

existing_id="$(gh api "repos/${REPO}/rulesets" --jq ".[] | select(.name==\"${RULESET_NAME}\") | .id" | head -n 1 || true)"
if [[ -n "$existing_id" ]]; then
  echo "Removing existing ruleset '${RULESET_NAME}' (id: ${existing_id})..."
  gh api --method DELETE "repos/${REPO}/rulesets/${existing_id}"
fi

# Require `build` — CI workflow job name, and mirrored by aube-lock on renovate/**
# branches so platform automerge can arm without a GITHUB_TOKEN re-run.
gh api --method POST "repos/${REPO}/rulesets" --input - <<JSON
{
  "name": "${RULESET_NAME}",
  "target": "branch",
  "enforcement": "active",
  "conditions": {
    "ref_name": {
      "include": ["refs/heads/${BRANCH}"],
      "exclude": []
    }
  },
  "rules": [
    {
      "type": "required_status_checks",
      "parameters": {
        "strict_required_status_checks_policy": false,
        "required_status_checks": [
          { "context": "build" }
        ]
      }
    }
  ]
}
JSON

echo "Done. '${BRANCH}' now requires: build."
echo "Strict 'up to date with base' is off so auto-merge can finish when main moves."
echo "Renovate PRs auto-merge after aube-lock (or CI) marks build green."
