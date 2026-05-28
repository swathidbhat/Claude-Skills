---
name: workplace-replies
description: Draft, edit, or vet workplace messages on email, Slack, PR comments, review feedback, memos, status updates.
---

# Workplace Replies

Colleagues decide on reasons, facts, and tradeoffs, not tone. Write so the message earns agreement on its merits.

## When to use

- Replying to an email, Slack message, or thread
- Writing or answering PR review comments
- Addressing feedback on a doc
- Drafting a memo, status update, or meeting follow-up
- Arguing for or against a plan
- Vetting the user's own draft

Trigger even when "work" is unstated but the context is collaborative (a teammate's name, a project, a review, a deadline). Skip personal messages, sales copy, and creative writing.

## Scope

Governs register and grounding: word choice, sentence structure, certainty, sourcing. Does not pick strategy (push back vs. concede, who to escalate to). If asked for strategic options, give them and write each under these rules.

## Rules

**Grounding**
- Source every factual claim: doc, metric, quoted line, commit. If you can't source it, say so.
- State the evidence, not your confidence in it.
- Use specifics: a number, a date, a filename. Not "improve performance" but "cut p95 from 800ms to 300ms"; not "soon" but a date.

**Certainty**
- Separate what you know from what you suspect. Say "verified", "I think", "this assumes", "I'm not sure".
- Don't overstate. One wrong confident claim costs trust on the rest.

**Brevity**
- First sentence: the conclusion, ask, or decision.
- One idea per sentence. Split anything over two clauses.
- Cut throat-clearing ("just wanted to reach out"), stacked hedges ("might perhaps potentially"), and sentences that restate the prior one.

**Register**
- Active voice, active verbs. "I tested X and it failed under Y", not "failures were observed". Cut nominalizations: "decide", not "make a decision"; "fixed", not "implemented a fix".
- No superlatives ("seamless", "robust", "game-changing"), empty intensifiers ("really", "very"), or aspirational filler ("drive alignment", "unlock value") unless literal and checkable.
- No "X, not Y" or "not X, but Y" framing. State what's true; drop the rejected alternative unless it adds information.
- No em-dashes.

**Disagreement**
- Target the argument or evidence. Give your reason, the fact behind it, and the alternative, concretely.
- Don't predict the reader's reaction unless asked.

**Channel**
- Slack: shorter, more direct than email. PR comment: cite a line. Memo: cite a section.

## Vetting mode

When checking the user's draft, not writing one:
1. Verdict: send as-is, edit, or rework.
2. List each problem tied to a rule (e.g. "para 2 calls the rollout 'low-risk' with no evidence").
3. Give the corrected version. Don't rewrite silently.

## Examples

**Push back on a plan**
> I'd hold the migration until Monday. A Friday deploy leaves no weekday coverage if the backfill stalls, and the last two backfills (Mar 3, Apr 18) ran past their windows. Monday gives four working days to catch fallout. If Friday is firm, I want the rollback script tested first; it isn't yet.

Leads with the ask, cites two incidents, states the condition concretely.

**Status update**
> Auth is on track for the 14th. Login and token refresh are done and passing CI. Password reset remains, about two days. Open risk: rate-limit config is untested under load, so I'm load-testing Thursday before calling it done.

Verified facts plain, the one uncertainty flagged with a date to resolve it.

**PR comment**
> Line 42 reads config before env vars load, so the override on line 12 never applies. Repro: set FOO=bar, default still wins. Move the read into the init handler.

Cites the line, gives a repro, proposes a fix.

## Counter-examples

**Marketing register, no evidence**
> "Confident this migration will be a seamless, low-risk win that drives real alignment. Solid plan, excited to ship Friday!"

Confidence with no evidence; sell-words ("seamless", "drives alignment"); no risk named.

**Verbose and hedged**
> "Just wanted to circle back on the timeline, as it might perhaps be worth potentially considering whether we may want to revisit it given some concerns raised around stability."

Throat-clearing, stacked hedges, passive ("concerns raised"), no claim or ask.

**Ungrounded**
> "The current approach won't scale and will cause major problems. We should switch architectures ASAP."

Two strong claims, zero sources; "major problems" abstract; "ASAP" is not a plan. Fix: name the scaling limit, cite where it bites, give a date.
