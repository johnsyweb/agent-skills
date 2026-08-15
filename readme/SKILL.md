---
name: readme
description: Ensure the root README.md is clear above the fold and up to date with the repo.
disable-model-invocation: true
---

The deliverable is a root `README.md`. **Patch** it (create if missing) and stop.

If GitHub is surfacing a README from `.github/` or `docs/` instead of the root, say so and stop.

## 1. Gather

Work these in parallel.

**Surface.** Which README GitHub would show (`.github/`, root, `docs/`). Done when the surfaced path is known.

**Environment.** Package manifests, scripts, CI workflows, `LICENSE`, registry or store listings, coverage or security services, `CHANGELOG`, `CODEOWNERS`, `AUTHORS`, `SUPPORT.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`, docs, issues and discussions. Done when every one of those that exists is in hand, and every absence is noted.

**Existing README.** Voice, sentences that already answer a required question, badges, below-fold material sitting too high. Done when every current section is noted (the file may be missing).

**Observability.** Repo docs, runbooks, and recent PR bodies for dashboards, monitors, error-trackers, and log aggregators. Done when every relevant link found is in hand (the set may be empty).

## 2. Ask

One round, only for gaps:

- **What / why** — if the repo (README, description, docs) does not already say what it does and why it is useful.
- **Getting started** — if there is no install or first-success path in the environment or README.
- **Help** — if there is no `SUPPORT.md`, docs, issues, or discussions source.
- **Maintainers** — if none of GitHub owner, `CODEOWNERS`, `AUTHORS`, or the existing README name anyone.
- **Development status** — if version, `CHANGELOG`, description, and README are silent.
- **Below-fold** — Local development, Contributing, Code of conduct, Releasing, Observability, Security, or License when the topic is in the repo or the conversation but has no file and no existing prose.

Done when every gap above has a sourced answer.

## 3. Patch

Write root `README.md`. Keep sentences that still answer a required question. Match the file's voice. Move below-fold material down. A claim that contradicts the **environment** is rewritten or removed.

**Above the fold:**

# Name

One-liner: *what* it does.

badge row

*Why* it is useful, a couple of sentences.

## Getting started

The user's first success — install and one working command. Contributor clone-and-test waits below.

## Help

Where to get help. A `SUPPORT.md` or docs path is a **pointer**.

## Maintainers

Who maintains and contributes.

**Below-fold.** When Development status, Local development, Contributing, Code of conduct, Releasing, Observability, Security, or License has a **source**, write it from [SECTIONS.md](SECTIONS.md), in that order. A heading without a source is omitted.

**Badges.** At most five, one row under the one-liner. Families: CI (one badge, the primary test workflow), license, registry/version or store. Coverage or security only when a service is wired. Live, linked, alt text. Skip a family whose source of truth is missing.

**Pointers.** A sibling health file becomes a short relative link, not a restatement.

Done when the five above-the-fold answers are present, every below-fold heading that belongs is filled and every heading without a source is omitted, badges follow the cap and families, stale claims are gone, and the file is the root `README.md`. Stop — the file is the product.
