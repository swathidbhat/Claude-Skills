---
name: clear-writing
description: >-
  Write clear, direct, plain prose for human-facing text: reports, memos, emails,
  docs, PR descriptions, summaries, plans. Use whenever drafting or revising prose
  for a person to read, even if the user does not mention style. Enforces active
  voice, short sentences, no em-dashes, no marketing fluff, claims backed by
  specifics, terms defined on first use, and lead-with-the-point structure.
---

# Clear writing

Write so the reader understands fast, trusts the content, and never has to reread a sentence. Persuasion comes from the strength of the argument and the precision of the facts, not from the style. If the writing has to sound impressive, the argument is too weak.

Practice these rules on your own output. The cost of ignoring them is real: dense, hedged, or hyped writing makes a reader work harder, trust less, and miss the point.

## The rules

### 1. Lead with the point
State the conclusion first, then support it. Put the answer in the first sentence of a section, the first line of an email, the top of a memo. A reader who stops early should still get the main thing. Do not bury the claim under setup.

### 2. Use active voice and active verbs
Name who does what. "The server rejected the request" beats "the request was rejected." Active voice is shorter, assigns responsibility, and removes ambiguity about the actor.

### 3. Keep sentences short and clear
One idea per sentence. When a sentence carries three clauses and two qualifiers, the reader loses the thread. Break dense passages into separate sentences or a numbered list. If you are explaining a process, set out the steps explicitly and in order. Density is not depth; it usually hides disorganization.

### 4. Do not use em-dashes
This is a hard rule. Replace an em-dash with a period, a comma, a colon, or parentheses, whichever fits the logic. A period for two separate thoughts. A colon to introduce. Commas or parentheses for an aside. Removing the dash forces you to decide what the relationship between the clauses actually is.

### 5. Write plainly. No marketing or drama
Cut hype words and salesy framing: "game-changing," "unlock," "supercharge," "seamless," "robust," "best-in-class," "at scale" as a flourish. State the fact and let it carry the weight. "The API returns results in under 200 milliseconds" is stronger than "blazing-fast, best-in-class performance." Adjectives are not evidence.

### 6. Define terms on first use
Do not assume the reader knows your acronyms or jargon. Spell out a term the first time and say what it is in a few words: "the service-level agreement (SLA), the response time we promise customers." A reader who has to look up your vocabulary has already lost momentum.

### 7. Cut bloat and repetition
Say it once. Delete sentences that restate the previous sentence, throat-clearing openers ("It is important to note that"), and words that add length without meaning. If a paragraph and a later paragraph make the same point, merge them. Shorter is not the goal; lean is. Every sentence should earn its place.

### 8. Back every claim with a specific
Do not assert what you have not shown. "Complaints have surged" is weak alone; "complaints rose to 9.86 million, about 17 times the next category" is a claim a reader can check. Avoid comparative or superlative claims you cannot support ("a scale no other product approaches" when you have not presented the other products' numbers). If you do not have the specific, soften the claim to what you can defend.

### 9. Be sure what you mean
If you cannot say it plainly, you do not understand it yet. A sentence that reads as vague or hand-wavy is usually a sign the thought is unfinished. Before you keep a sentence, ask: what exactly am I claiming, and would the reader extract the same meaning I intend? Rewrite until the answer is yes. Jargon used as a verb ("we need to solution this") is a common tell; replace it with the literal action.

### 10. Be intellectually honest
Distinguish what is established from what is claimed. Mark allegations as allegations and settled findings as settled. Flag where a finding is contested and present the strongest counter-evidence, do not hide it. Cite to the primary source, not to a summary of it. Honesty about uncertainty builds more trust than false confidence.

## Quick self-check before delivering

Run this pass on anything you wrote:

- Does the first sentence state the point?
- Any em-dashes? Remove them.
- Any sentence longer than about 25 words or carrying more than one idea? Split it.
- Any hype or filler word? Cut it.
- Any acronym or term undefined on first use? Define it.
- Any claim without a supporting specific? Add the specific or soften the claim.
- Any sentence you are not sure the meaning of? Rewrite it.
- Any two sentences making the same point? Merge them.

## Before and after

Each example shows a principle in a different writing situation.

**Lead with the point (rule 1): a team message**
- Before: "Hi all, hope everyone's week is going well. I wanted to reach out because we've had a few conversations lately about the release timeline, and after thinking it through I believe it may be worth considering pushing the launch."
- After: "Let's push the launch to next week. The load test isn't finished, and two reviewers are out Friday."
- Why: the after states the decision and the reasons first. The before makes the reader hunt for the ask.

**Dense run-on to explicit steps (rules 3, 4): setup docs**
- Before: "To get started, clone the repo and then install the dependencies, making sure you're on Node 20 first, and copy the example env file before running the dev server, which won't work unless the database is already running."
- After: a numbered list. "1. Clone the repo. 2. Install dependencies (requires Node 20). 3. Copy .env.example to .env. 4. Start the database. 5. Run the dev server."
- Why: each step is one action in order. The reader can follow along. 

**Marketing voice to plain fact (rule 5): release notes**
- Before: "Our revolutionary new dashboard is a game-changer that seamlessly empowers teams to unlock insights at scale."
- After: "The new dashboard shows each team's open tickets, response time, and backlog in one view, and refreshes every minute."
- Why: the after says what it does. The before says how to feel about it.

**Vacuous claim to specific (rule 8): a proposal**
- Before: "This approach is significantly faster than the alternatives."
- After: "This approach renders the report in 1.2 seconds, down from 8."
- Why: the after gives the number. The before asks the reader to trust "significantly."

**Jargon to literal meaning (rule 9): a status update**
- Before: "We're operationalizing synergies across the workstream to drive alignment."
- After: "Design and engineering will run one shared standup so they stop duplicating work."
- Why: the after names who does what and why. The before could mean almost anything.

**Overclaiming to honest claim (rule 10): an analysis**
- Before: "Users churn because onboarding is too long."
- After: "Users who drop off spend 12 minutes in onboarding on average, versus 4 for those who stay. Onboarding length looks like a factor, though we have not tested it directly."
- Why: the after states what the data shows and marks the limit of the claim.
