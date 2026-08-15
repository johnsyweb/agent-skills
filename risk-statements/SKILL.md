---
name: risk-statements
description: "Interview into Hubbard-form risk statements: 90% CI, event, outcome, impact, horizon, evidence."
disable-model-invocation: true
argument-hint: "Existing risk, worry, or register, if any"
---

The deliverable is a **leadership-ready** risk statement — one sentence a decision-maker can audit:

> There is a **[90% CI]** probability that **[event]** occurs leading to **[outcome]**, that causes **[impact]**, over **[time horizon]**.
>
> Evidence: **[historical | analogy | uncalibrated judgement]** …

**Three-slot.** Event, outcome, and impact are distinct. Event is observable. Outcome is what follows. Impact is loss on a ratio scale, as a 90% CI in a unit the decision-maker named, unless they named a different interval. Schedule slip is impact only when linked to consequence.

Probability is a 90% CI unless they named a different interval. A point percentage is allowed only with stated uncertainty. The assessment is quantities; RAG / H-M-L / heat-map cells may be input.

If there is no decision and no loss, say so and stop.

## 1. Mode

From the argument and conversation:

- Several rows or a register → **Register**
- An existing statement, RAG cell, heat-map cell, or H-M-L label → **Critique**
- Else → **Author**

Done when one mode is named.

## 2. Interview

Walk **fill order**, one question at a time, skipping any slot already sourced: **event**, **outcome**, **impact**, **horizon**, **probability**, **evidence**, **decision link**. Interview into ranges when data is thin. Ask the decision link (accept / mitigate / defer / …); continue if unknown.

Before/after when a slot needs a picture of done: [EXAMPLES.md](EXAMPLES.md).

**Author.** Start from the worry. Walk fill order.

**Critique.** Parse into the slots. If any leadership-ready item fails, emit **Not leadership-ready** and a punch-list only — then walk those gaps in fill order.

**Register.** Run Author or Critique per row until each row is leadership-ready. Then one question: do any share drivers or failure modes that would double-count if treated as independent? When the user asks for odds of various portfolio loss levels, open [READING.md](READING.md) rather than simulating.

Done when every required slot for the active row is sourced (decision link may be unknown).

## 3. Emit

The target sentence plus evidence line. A statement is leadership-ready only when every item is true:

- [ ] Observable **event**
- [ ] Distinct **outcome**
- [ ] Distinct **impact** on a ratio scale with a 90% CI (or the interval they named)
- [ ] Explicit **time horizon**
- [ ] **Probability** as a 90% CI (or the interval they named; a point percentage only with stated uncertainty)
- [ ] **Evidence grade** stated
- [ ] Assessment is quantities

When the form is challenged, open [READING.md](READING.md).

Done when the sentence passes every item. Stop — the sentence is the product.
