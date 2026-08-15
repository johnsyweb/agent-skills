# Before / after — risk statements

Weak forms; leadership-ready forms. `$` is a ratio-scale stand-in, not a currency mandate.

## 1. Dependency / vendor

**Before (not leadership-ready):**  
Amber — vendor delivery risk on the payments API.

**After:**  
There is a **15–35%** probability that **the payments vendor misses the contracted integration date by more than two weeks** leading to **we cannot complete end-to-end payment testing before the freeze**, that causes **$180k–$650k incremental contractor and overtime cost (90% CI)** over **the next release (≈10 weeks)**.  
Evidence: **analogy** (two prior vendor slips on this programme) + **uncalibrated judgement** on cost bands.

---

## 2. Capacity

**Before:**  
High risk we don't have enough engineers; may impact Q3 roadmap.

**After:**  
There is a **25–45%** probability that **two senior engineers leave or are seconded before 30 September** leading to **the identity migration is deferred at least one quarter**, that causes **$0.4M–$1.1M deferred benefit / continued dual-run cost (90% CI)** over **the next 12 months**.  
Evidence: **historical** attrition on the team + **uncalibrated judgement** on dual-run cost.

---

## 3. Reliability / outage

**Before:**  
Risk of production outages is medium (3/5).

**After:**  
There is a **10–20%** probability that **a cascading failure in the checkout service** occurs leading to **checkout unavailable for more than 4 hours in a single incident**, that causes **$250k–$2.0M lost gross margin plus goodwill remediation (90% CI)** over **the next 12 months**.  
Evidence: **historical** incident rate (adjusted) + **analogy** from peer services for loss magnitude.

---

## 4. Security incident

**Before:**  
Cyber risk — elevated. Needs more controls.

**After:**  
There is a **5–15%** probability that **credential stuffing against the customer portal succeeds at scale** leading to **forced reset and regulator notification**, that causes **$0.5M–$4M response, notification, and remediation cost (90% CI)** over **the next 12 months**.  
Evidence: **analogy** (industry loss ranges) + **uncalibrated judgement**; flag that experts are **not** calibration-trained.

---

## 5. Scope / discovery

**Before:**  
Green/amber — some unknowns in legacy data migration but team is on it.

**After:**  
There is a **30–55%** probability that **legacy account records fail automated migration for more than 8% of rows** leading to **a manual cleanup wave and a slipped cutover**, that causes **$120k–$400k cleanup labour and a 3–6 week delay with ~$50k–$180k opportunity cost (90% CI)** over **the migration window (now → cutover + 6 weeks)**.  
Evidence: **historical** sample migration error rate + **uncalibrated judgement** on delay cost.

---

## What changed each time

| Weak pattern | Fix |
| --- | --- |
| RAG / 1–5 as the answer | Dropped; quantities only |
| Vague event ("cyber risk") | Observable event |
| Outcome = impact ("may impact roadmap") | Split outcome vs quantified loss |
| No horizon | Named period |
| Point confidence | Ranges + evidence grade |
