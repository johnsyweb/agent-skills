---
status: accepted
---

# Renovate for dependency updates

Dependabot’s npm ecosystem does not refresh `aube-lock.yaml`. A custom Monday workflow ran `aube update --latest` instead. We want one fleet pattern: hosted Renovate, seven-day cooling, automerge when checks are green, and lock regeneration without a GitHub App.

## Decision

1. **Mend Renovate** via [johnsyweb/renovate-config](https://github.com/johnsyweb/renovate-config).
2. **aube-lock** on `renovate/**` regenerates the lock, runs `aube ci`, and publishes Check Runs on the final HEAD.
3. **Membership** in [johnsyweb/github-infra](https://github.com/johnsyweb/github-infra).
4. **Cutover** — remove Dependabot, Dependabot auto-merge, and the scheduled `aube-update` workflow in the same change.
5. **Cooling** — Renovate seven days; aube `minimumReleaseAge: 10080`.
6. **Local** — `mise run update-deps` for within-range bumps; `mise run update` after git pull.

## Consequences

- Close open Dependabot / `chore/aube-deps` PRs after cutover.
- Renovate owns npm and GitHub Actions updates.
