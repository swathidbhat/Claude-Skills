---
name: fallacy-finder
description: Identify logical fallacies in arguments, whether evaluating the user's own writing, analysing external content, or explicitly checking for fallacies. Provides fallacy name, description, example, and contextual analysis with suggestions for improvement. Use when the user says "check for fallacies", "evaluate my argument", "analyse this", "is this fallacious", "steelman this", or similar trigger phrases.
---

# Fallacy Finder

Identify logical fallacies and strengthen arguments.

## Introduction

### Purpose

Critical thinking requires recognising flawed reasoning, both in what we read and what we write. This skill helps users:

1. **Identify fallacies** in external content (articles, tweets, forum posts, debates)
2. **Improve their own arguments** by catching fallacious reasoning before publishing
3. **Understand why** something is fallacious and how to fix it

The goal is collaborative improvement, not gotcha callouts. When evaluating user writing, the tone should be constructive helping them make stronger arguments, not just pointing out flaws.

## When to Use

Trigger this skill when the user:

- Says "check this for fallacies" or "any fallacies here?"
- Says "evaluate my argument" or "critique my reasoning"
- Says "analyse this" (in context of argument evaluation)
- Says "is this fallacious?" or "what's wrong with this argument?"
- Says "steelman this" or "strengthen my argument"
- Says "help me respond to this" (where the content contains fallacies)
- Asks "what fallacy is this?"
- Provides content and asks for logical analysis
- Shares a tweet/post/article and asks what's wrong with it
- Is drafting persuasive writing and wants a logic check

## What This Skill Governs

### Analysis Framework

For each identified fallacy, provide:

1. **Fallacy name** — the standard name
2. **Description** — 1-2 line explanation of the fallacy
3. **Standard example** — a classic illustration
4. **Contextual analysis:**
   - **Claim:** What specific claim contains the fallacy
   - **Fallacy:** How the fallacy manifests here
   - **Reasoning:** Why this is fallacious
   - **Fix:** How to reframe the argument validly

### Tone Calibration

**When evaluating user's own writing:**
- Collaborative, not clinical
- "This might come across as X — here's why and how to reframe"
- Focus on strengthening their argument, not just identifying flaws
- Acknowledge what's working before noting issues

**When analysing external content:**
- More direct identification is fine
- Still explain *why* it's fallacious
- Offer the user language to respond if relevant

### Edge Cases

**Rhetorically weak but not technically fallacious:**
- Call it out explicitly: "This isn't a formal fallacy, but it's rhetorically weak because..."
- Explain why it might fail to persuade or invite counterargument
- Suggest strengthening moves

**Intentional fallacy use (satire, illustration, rhetoric):**
- Acknowledge the intent: "This uses [fallacy] intentionally for [satirical/illustrative/rhetorical] effect"
- Note whether it's effective for that purpose
- Flag if it might be misread as sincere argument

**Responding to someone else's fallacy:**
- Identify the fallacy in the original
- Help user craft a response that calls it out constructively
- Avoid suggesting the user respond with fallacies of their own

---

## Workflow

### Step 1: Receive Content

User provides:
- Their own draft writing for evaluation
- External content (tweet, article excerpt, forum post) for analysis
- A specific argument they want checked

Clarify if needed: "Are you looking for feedback on your own argument, or analysing someone else's?"

### Step 2: Identify Issues

Scan for:
1. **Formal fallacies** — invalid logical structure
2. **Informal fallacies** — flawed reasoning patterns
3. **Rhetorical weaknesses** — not fallacious but unconvincing
4. **Intentional rhetorical devices** — fallacies used for effect

**Reference:** Consult `references/fallacies.md` for the complete fallacy catalogue with definitions and examples.

### Step 3: Report Findings

For each issue:

```
**[Fallacy Name]**

*What it is:* [1-2 line description]

*Classic example:* [Standard illustration]

*How it appears here:*
- **Claim:** [The specific problematic claim]
- **Fallacy:** [How the fallacy manifests]
- **Reasoning:** [Why this is fallacious]
- **Fix:** [How to reframe validly]
```

### Step 4: Summarise

After individual callouts:
- Note what's working well (especially for user's own writing)
- Prioritise which fixes matter most
- Offer to help rework specific sections

---

## Examples

### Correct Usage

**User:** "Check this tweet for fallacies: 'If you really cared about the environment, you wouldn't fly anywhere. Yet climate activists fly to conferences. Hypocrites.'"

**Claude:**

**Tu Quoque (Appeal to Hypocrisy)**

*What it is:* Dismisses an argument because the arguer doesn't perfectly follow their own advice.

*Classic example:* "You say smoking is bad, but you smoke yourself."

*How it appears here:*
- **Claim:** Climate activists are hypocrites because they fly, therefore their environmental arguments are invalid
- **Fallacy:** The tweet attacks the activists' behaviour rather than their arguments about climate
- **Reasoning:** Whether someone personally flies has no bearing on whether climate science is correct. The argument's validity is independent of the arguer's behaviour.
- **Fix:** To engage substantively, one would need to address the actual climate arguments, not the activists' travel choices.

Want help crafting a response?

---

**User:** "Evaluate my argument: 'We shouldn't implement this policy because it's never been done before. Sticking with tradition is safer.'"

**Claude:**

Your argument has some structural issues I can help you address:

**Appeal to Tradition**

*What it is:* Argues something is correct simply because it's the way things have been done.

*Classic example:* "We've always done hiring this way, so it must be the right approach."

*How it appears here:*
- **Claim:** The policy shouldn't be implemented because it's unprecedented
- **Fallacy:** Novelty alone doesn't make something bad, just as tradition alone doesn't make something good
- **Reasoning:** Many beneficial policies were unprecedented when first proposed. The argument needs to identify *specific risks* of the new approach, not just its newness.
- **Fix:** Reframe around concrete concerns: "This policy poses risks X and Y that our current approach avoids because Z."

Would you like help identifying the actual risks you're concerned about?

---

**User:** "Is this a fallacy? 'Studies show meditation reduces stress. Therefore everyone should meditate.'"

**Claude:**

This isn't a formal fallacy, but it's **rhetorically weak** for a few reasons:

1. **Unstated assumptions:** It assumes stress reduction is universally desired, that meditation works equally for everyone, and that there are no alternatives.

2. **Leap from "is" to "ought":** The study shows meditation *can* reduce stress, not that everyone *should* do it.

**Suggested improvement:** "Studies show meditation reduces stress, so it's worth considering if you're looking for stress management techniques."

This acknowledges the evidence while avoiding the universal prescription.

---

### Incorrect Usage

| Scenario | Why It's Wrong |
|----------|----------------|
| Labelling every disagreement as a fallacy | Disagreement isn't fallacious; flawed *reasoning* is |
| Using fallacy identification to "win" arguments | Goal is understanding, not point-scoring |
| Ignoring context (satire, illustration) | Some fallacies are intentional and effective |
| Only pointing out flaws without fixes | Always offer constructive improvement |
| Being harsh when evaluating user's own writing | Collaborative tone; they're trying to improve |
| Missing the actual fallacy while nitpicking | Focus on the core logical issue |

---

## Principles

1. **Collaborative over combative.** The goal is stronger arguments, not gotchas. Especially when evaluating the user's own writing, frame feedback constructively.

2. **Explain, don't just label.** Naming a fallacy isn't enough. Explain *why* the reasoning fails and *how* to fix it.

3. **Distinguish fallacies from weak arguments.** Not every bad argument is fallacious. Call out rhetorical weakness separately from logical invalidity.

4. **Acknowledge intentional use.** Satire, illustration, and rhetoric sometimes deploy fallacies deliberately. Note when this is happening and whether it's effective.

5. **Context matters.** A casual tweet and a policy paper warrant different levels of scrutiny. Match the analysis to the stakes.

6. **Steelman when relevant.** If asked to help respond to a fallacious argument, also help the user understand the strongest version of the opposing view.

---

## Notes on Scope

The reference list covers the most commonly encountered fallacies. For obscure formal fallacies or domain-specific reasoning errors (e.g., statistical fallacies), Claude should draw on general knowledge and explain from first principles if the fallacy isn't listed above.

If the content contains multiple fallacies, prioritise the most significant ones rather than exhaustively listing every minor issue. 