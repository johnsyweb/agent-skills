---
name: pr-description
description: Draft a pull request title and Five-C body from the branch's commits and a short conversation.
disable-model-invocation: true
argument-hint: "Card URL or id, if any"
---

The deliverable is a pull request **title** and Five-C **body**.

## 1. Gather

Work these in parallel.

**Branch-point.** Merge-base of `HEAD` and the repo's default branch (`origin/HEAD`, or the host's default). If that does not resolve, or the user named a different base, ask. Done when `branch-point...HEAD` is a real named commit pair. If the log on that range is empty, report it and stop.

**Commits.** The log on that range. Done when every commit in the range is in hand.

**Card hunt.** Conversation, branch name, commit messages, and any argument (URL or id) for a tracker item — GitHub/GitLab issue, Jira, Linear, Trello. Fetch title and body for every candidate that resolves. Done when every candidate is listed (the list may be empty).

**Tests.** Specs, unit, integration, and acceptance tests introduced or changed on this range. Done when every such test in the diff is noted, including the case that there are none.

**Observability.** Repo docs, runbooks, and recent PR bodies for dashboards, monitors, error-trackers, and log aggregators that apply to this change. Done when every relevant link found is in hand (the set may be empty).

**Template hunt.** On the default branch: `pull_request_template` files in `.github/`, the root, and `docs/`; any `PULL_REQUEST_TEMPLATE/` directory; `.gitlab/merge_request_templates/`. None in this repo → the owner's public `.github` repo. One file is chosen. Several are candidates. Done when every candidate is listed (the list may be empty).

## 2. Ask

One round, only for gaps:

- **Template** — when the hunt found several. Present them and ask which to use.
- **Card** — always. Present each candidate and ask which is the card. If the hunt was empty, ask whether a card exists.
- **Context** — the *why*, if it is not already in the confirmed card or the prompter's words.
- **Confirmation** — the post-publish check, if observability was empty: how this change will be known to have worked after publish.
- **Considerations** — alternatives, doubts, reviewer questions, if the conversation (and commits/comments) have not already supplied them. "None, because …" counts.
- **Title** — confirm it if it was inferred (no card title to copy).

Done when every gap above has a sourced answer.

## 3. Emit

**Template.** When a template is chosen, **augment** it from [TEMPLATE.md](TEMPLATE.md). Stop when that file's Done is met.

When the hunt was empty, title on its own line, then:

#### Card

[title](url)

Omit this heading when the user confirmed there is no card.

#### Context

The *why*, a couple of sentences, in the card's, the prompter's, or the user's words.

#### Change

A short *how* that accounts for every commit in the range.

#### Confirmation

A markdown checklist. Checked rows (`- [x]`) for verification already in the change (specs, unit, integration, acceptance — those that exist). Unchecked rows (`- [ ]`) for after publish: linked dashboards, monitors, error-trackers, and log aggregators where they exist, otherwise the check from step 2. Include what improvement looks like, how a regression would show, and what happens post-publish.

#### Considerations

Sourced alternatives, doubts, and reviewer questions. "None, because …" counts.

**Title.** The card's title when Card is present; otherwise a line from Change, as confirmed.

Done when every heading that belongs is filled, Card is omitted only on confirmed absence, Confirmation is a checklist with a checked row for every test that exists and at least one unchecked post-publish row, and every sourced answer appears. Stop — the body is the product.
