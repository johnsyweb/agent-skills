# Augment

The chosen template is the skeleton. Fill its headings in place. Keep its extra prompts (type of change, process checklist, license). Drop `<!-- instructional comments -->` once the slot is filled. Keep visible headings, links, and checkboxes.

**Title** follows SKILL.md: the card's title when Card is present; otherwise a line from Change, as confirmed.

Each C is written as in SKILL.md §3 Emit, then poured:

| Their heading | C |
|---|---|
| Card, Related Issue(s), Ticket | Card |
| Context, Why, Motivation, Background | Context |
| Change, Changes | Change |
| Description, Summary | Context then Change, as `**Context**` / `**Change**` blocks under their heading |
| Confirmation, Test plan, Testing, How has this been tested | Confirmation |
| Considerations, Additional Notes, Notes, Alternatives | Considerations |

A template that already *is* the Five Cs is filled in place.

**Card.** Host issue → their closing keyword (`Fixes #12`). Jira, Trello, Linear → title plus link. No card → remove their Related Issues / Card heading.

A C with no matching heading is appended after their last section, in Five-C order, with our `####` headings.

Tick a process box when gather supports it. Their boxes stay; they are not Confirmation. Our Confirmation rows go under the heading that holds Confirmation.

Done when every template heading that belongs is filled, unmatched leftover Cs are appended, Card's heading is removed when there is no card, instructional comments are gone, Confirmation is a checklist with a checked row for every test that exists and at least one unchecked post-publish row, their process boxes are ticked where gather supports it, and every sourced answer appears. Stop — the body is the product.
