---
status: accepted
---

# aube for package management

This repository’s only npm consumers are semantic-release and related plugins. Dependabot cannot refresh `aube-lock.yaml`, and a conventional lockfile story would drift from the rest of the johnsyweb fleet. We already install with aube; this ADR records the supply-chain posture.

## Decision

1. **aube** is the package manager (`mise` pins `aube` / Node; `packageManager: "aube@1.40.0"`).
2. **Strict install posture** without full `paranoid: true` — `strictStoreIntegrity` fails on `semantic-release` → `npm` packuments that lack `dist.integrity`. Equivalent knobs: `jailBuilds`, `trustPolicy: no-downgrade`, `strictDepBuilds`, `advisoryCheck: required`, seven-day `minimumReleaseAge`.
3. **Frozen CI** via `aube ci` (`./script/ci-install` / `./script/cibuild`).

## Consequences

- Lifecycle scripts need an `allowBuilds` entry before they run under `strictDepBuilds`.
- Emergency bumps younger than seven days need `minimumReleaseAgeExclude`.
