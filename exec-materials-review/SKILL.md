---
name: exec-materials-review
description: Methodical review of executive-facing persuasive materials (pitch decks, memos, business cases, board docs) along two separated tracks — fact examination against a source corpus, and narrative/argumentation examination against explicit criteria. Maintains a running fact-check log and narrative-review log, and gates all edits behind per-finding author direction. Use when the user says "review this deck", "is this convincing", "fact-check this memo", "stress-test my pitch", or shares a document whose job is to persuade a decision-maker.
---

# Executive Materials Review

Review persuasive documents the way a skeptical decision-maker will read them — with facts and narrative examined separately, methodically, and on the record.

## Purpose

Executive materials fail in two independent ways: the facts are wrong, or the argument doesn't survive a skeptical reader. Mixing the two examinations makes both worse — a compelling narrative launders weak facts, and a wrong number distracts from a broken argument. This skill keeps them separate **because they have different verdicts**: a fact claim resolves to a status (verified / discrepancy / unverifiable), while a narrative gap resolves only through author judgment (fix it, reframe it as intentional, or convert it into the ask).

**Principles:**

- **Two tracks, two logs, never merged.** Fact findings and narrative findings go to separate running logs, because they have different fix workflows and different lifecycles (facts re-verify per document version; narrative direction is a one-time author decision).
- **Criteria before judgment.** State the evaluation criteria before reporting any narrative finding, because unanchored review collapses into taste and is unfalsifiable.
- **Verbatim claims, exact-quote proofs.** The fact track quotes the document verbatim and the source verbatim, because paraphrase is where verification errors hide.
- **Analysis before edits — always.** Present narrative findings and stop. Author direction changes fixes materially: a "contradiction" may be the intended nuance, and a weakness may become the ask. Editing first destroys those options.
- **A gap has three resolutions, and only the author picks:** fix it, make it explicitly intentional, or convert it into the ask.
- **New claims enter through the fact queue.** Any factual claim added during revision gets flagged for fact-check rather than silently inserted, because it bypassed the corpus the fact track verified against.
- **Logs are append-only running docs.** One dated entry per pass, traceable to the document version checked, because the document will be revised repeatedly and stale verdicts must be distinguishable from current ones.

## When to Use

**Use when:**
- The user asks to review, critique, fact-check, or stress-test a deck, memo, business case, one-pager, or any document whose job is to persuade a decision-maker
- A work product is headed to an executive, investor, hiring manager, or board and the user asks "is this convincing?" or "is this right?"
- A reviewed document was revised and needs a re-check pass (append a new dated entry to the existing logs)

**Do NOT use when:**
- The material is code or a pull request (use a code-review skill)
- The user wants prose style polish only (use a writing-style skill)
- The document is informational with no decision being sought (a reference doc has no "ask" to evaluate — the fact track may still apply alone)

## What It Governs

The methodology for examining executive materials, the separation between fact and narrative examination, the required structure of both running logs, and the edit-gating rules. It does NOT govern: the visual design of the document, sourcing new research (it verifies against an existing corpus; gaps in the corpus are findings, not research tasks), or the author's final judgment calls.

## Process

### Step 0 — Setup (both tracks)

1. Identify the document, its version (path + last-modified), the **audience**, and the **decision sought**. If the decision sought is unclear, that is narrative finding #1 — do not invent one.
2. Locate or create the two logs **next to the work product**:
   - `fact-check-log.md`
   - `narrative-review-log.md`
   - If a running log already exists for this document under another name, append to it — do not create a duplicate.
   - Each log starts with a one-paragraph header stating what it is and its entry format, then dated entries separated by `---`.
3. Decide which tracks run this pass. They can run in either order or in parallel, but each pass declares what it is NOT checking: the fact pass ignores whether the argument works; the narrative pass states "facts assumed true pending fact-check."

### Track F — Fact examination

1. **Write the methodology statement first**, at the top of the entry: what corpus was checked against (e.g., a `sources/` folder only), whether live data pulls were made, and the per-claim test. Standard test for data claims: *what is measured, over what window, in what unit, does the math reproduce, and does our mental model match the data provider's.*
2. **Inventory every checkable claim**, verbatim, with its location (slide/section). Everything with a number, date, quote, attribution, legal holding, or named event is checkable. Walk the document in order so coverage is auditable.
3. **Apply the per-class rules:**
   - *Quoted statistics:* must match the source text or dataset exactly. A number that appears nowhere in the corpus is a **Discrepancy** even if plausible.
   - *Derived figures:* reproduce the arithmetic and state the basis. A per-day rate computed on calendar days versus workdays differs by more than 40% — the document must own one basis. Label **Derived**, not Verified.
   - *Rounding:* flag direction — rounding up overstates; note it even when minor.
   - *Legal/case claims:* check holding, court, and decision date against the filing itself; label material from unadjudicated complaints as **allegations**.
   - *Event claims:* a specific event with a specific date needs a source documenting **both**. General support for the trend does not source the event ("the market shifted" ≠ "the policy was withdrawn in May").
   - *Interpretive claims:* where the document characterizes rather than quotes, check whether the source actually says that ("costs doubled" when the source says "costs are rising"); label **Interpretive** with the real quote alongside.
   - *The references themselves:* verify titles, authors, dates, docket numbers. Miscited sources are findings.
4. **Use a fixed status taxonomy:** `Verified` / `Verified w/ rounding` / `Derived` / `Interpretive` / `Discrepancy` / `Unverifiable from sources` / `Unsourced event` / `Misquoted citation`.
5. **Lead the entry with a severity summary table** (issue → severity: Fix / Re-source / Soften / Note basis / Minor), then the full per-section claim tables, then a **bottom line** paragraph stating whether the core argument's load-bearing facts reproduce.
6. Do not fix the document from the fact track. Findings route to the author (or to the narrative track if a correction breaks an argument — see Reconciliation).

### Track N — Narrative examination

1. **State the criteria explicitly before any finding.** Default set for persuasive exec material — adapt, never skip:
   - Answer-first structure (is the conclusion up front, or earned?)
   - A clear decision to make (does it end with something the exec can say yes to?)
   - Stakeholder economics (who pays / why they'd pay / what it's worth — not just problem size)
   - Timing coherence (does "why now" hold together internally?)
   - Why-us (versus incumbents, in-house, or nobody)
   - Objection pre-emption (are the skeptic's questions answered before asked?)
2. **Read the whole document before judging any part.**
3. **Name the load-bearing strengths first** — the assets that edits must not break. Not flattery: identify the moves doing the persuasive work.
4. **Report gaps ranked by decision-impact.** Phrase each as the skeptic's question it fails to answer ("a sharp exec will ask X in seconds") — this makes findings testable rather than stylistic.
5. **Run the internal-consistency pass:** check every headline claim against the document's own body, captions, footnotes, and other sections. The document's own concessions are the strongest evidence of overclaim.
6. **Stop. Present findings. Do not edit.** For each gap, offer the three resolution paths: fix / reframe as explicitly intentional / convert into the ask.
7. **On author direction:** log each finding as *gap → author's direction → resolution* in the narrative log's dated entry, then apply edits — in the author's voice and design system. Any new factual claim added gets a flagged reference ("to be confirmed in fact-check") and a line in the fact log's queue.

### Reconciliation (after both tracks have run)

1. Fact corrections that change a load-bearing number or date → note in the narrative log (does the argument still hold at the corrected value?).
2. Narrative revisions that added or reworded claims → queue in the fact log for the next pass.
3. Each log's next entry re-checks against the new document version; note the version examined.

## Known Gotchas

| Issue | Cause | Fix |
|---|---|---|
| A flagged "contradiction" was the author's intended nuance | Reviewer can't distinguish a wrong argument from an implicit one | Report as *unresolved tension* and propose making it explicit; never prescribe deletion before author direction |
| Headline overclaims what the document's own body concedes | Titles get written before the analysis settles | The internal-consistency pass (Track N step 5) is mandatory, not optional |
| Reviewer invents an ask the author didn't intend | The real ask can be nuanced (e.g., a role or an introduction, not a build/buy decision) | Absence of an ask is a finding; its content comes only from the author |
| A plausible number appears nowhere in the corpus | Figure typed from memory during drafting, close to but not equal to the real value | Exact-match discipline: no source hit = Discrepancy, regardless of plausibility |
| Derived figure defensible on one basis, wrong on another | Basis never stated (calendar days vs. workdays, point-to-point vs. annual totals) | Reproduce the arithmetic on all reasonable bases; require the document to own one |
| Specific event + date claimed with only general trend support | Trend evidence feels like event evidence | Event claims need a source documenting both the event and the date |
| New claim added during narrative revision bypasses fact-check | Fixes sometimes need facts the document lacked | Flag with a "to be confirmed" reference and queue in the fact log |
| Structural edits break manual numbering / cross-references | Hardcoded page numbers, "see slide 12" | Check for manual references before inserting sections; automate numbering where the format allows |
| Two reviewers clobber each other's files | Fact and narrative tracks may run as separate agents in one directory | Stage only your own track's files; if an edit fails because the file changed, re-read before retrying |
| Second pass duplicates a log instead of appending | Log filename conventions drift per document | Search for an existing running log for the document first; append a new dated entry |

## Output Specification

Both logs live in the document's directory. Append-only; one dated entry per pass; the newest entry states the document version (path + last-modified or commit) it examined.

**`fact-check-log.md`** — per entry:
- Header: date, document version checked, methodology statement (corpus, live pulls or not, per-claim test)
- Severity summary table: `# | Issue | Severity (Fix / Re-source / Soften / Note basis / Minor)`
- Per-section claim tables: `Claim (verbatim) | Proof (exact quote / computed) | Source | Status | Checked (date)`
- Citation-accuracy table for the references themselves
- Bottom line: do the load-bearing facts reproduce, and which fixes matter

**`narrative-review-log.md`** — per entry:
- Header: date, document version, audience, decision sought, declared scope ("facts assumed true pending fact-check")
- Criteria used
- Load-bearing strengths
- Findings table: `# | Gap | Author's direction | Resolution` (direction/resolution filled in after the author responds — a presented-but-unanswered pass leaves them blank)
- Open items: inputs still needed from the author; claims queued for fact-check

Plus, when Track N reaches step 7: the edited document itself, revised in the author's voice.

## Examples

### Positive

**"Is this pitch deck convincing to an investor? The numbers are being checked separately."**
- Track N only. Declare "facts assumed true pending fact-check." State the six criteria, name the load-bearing strengths (e.g., a reframe that converts a hard problem into a tractable one), rank gaps as the investor's questions, run the self-consistency pass (catching a headline the deck's own appendix contradicts), present, and stop. Log to `narrative-review-log.md` once the author responds per-finding.

**"Fact-check this market-sizing memo against the sources folder."**
- Track F only. Methodology statement, verbatim claim inventory, per-class rules, status taxonomy, severity summary, citation-accuracy pass, bottom line — all in a dated `fact-check-log.md` entry. No opinion on whether the argument works.

### Negative

**"Review this PR before I merge."**
- Not this skill — code review has its own skills and criteria.

**"Make this paragraph punchier."**
- Not this skill — pure style work with no examination of facts or argument. Use a writing-style skill.
