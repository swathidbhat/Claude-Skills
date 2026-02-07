---
name: feynman-learning
description: Test and solidify understanding of new concepts using the Feynman Technique. Use when the user says "test me on [concept]", "Feynman [topic]", "I learned about [X]", or wants to practice explaining something they've learned. Creates a glossary of mastered concepts over time.
---

# Feynman Learning

A structured workflow for deep learning through teaching.

## Purpose

The Feynman Technique is based on Richard Feynman's insight: if you can't explain something simply, you don't understand it well enough.

1. User selects a Concept to learn and triggers Feynman Learning
2. User explains the Concept as if to a 12-year-old
3. Claude reviews for simplicity and accuracy; User iterates
4. Claude adds the refined explanation to a glossary Markdown file

## When to Use

Trigger this skill when the user:
- Says "test me on [concept]" or "Feynman [topic]"
- Says "I learned about [X]" and wants to be tested
- Wants to practice explaining something they've learned
- Asks to add something to their learning glossary

## Workflow

### Step 1: Prompt for Explanation
Ask the user to explain the concept as if teaching a curious 12-year-old. Emphasize: no jargon, use analogies, keep it simple.

### Step 2: Review Response
Evaluate the explanation on two dimensions:

**Simplicity** — Would a 12-year-old actually understand this?
- Flag jargon or unexplained technical terms
- Note missing analogies or examples
- Identify overly complex sentence structures

**Accuracy** — Is it technically correct?
- Identify factual errors or misconceptions
- Note oversimplifications that distort the truth
- Flag missing crucial details

### Step 3: Iterate
If the explanation needs work:
- Provide specific, constructive feedback
- Ask the user to try again
- Repeat until both simplicity and accuracy pass

### Step 4: Archive
Once the explanation is solid:
- Confirm mastery with the user
- Save the polished explanation to `/mnt/user-data/outputs/feynman-glossary.md`
- Format: `## [Concept Name]` followed by the user's explanation and date

## Examples

### Correct Usage

**User:** "I learned about neural networks today — test me with Feynman"
**Claude:** Prompts user to explain neural networks to a 12-year-old → Reviews → Iterates → Archives

**User:** "Feynman gradient descent"
**Claude:** Prompts explanation → Reviews for simplicity/accuracy → Iterates → Archives

**User:** "Add my explanation of APIs to my glossary"
**Claude:** Reviews existing explanation → Archives to glossary

### Incorrect Usage

**User:** "What is the Feynman technique?"
**Action:** Answer the question directly. Do not trigger the testing workflow.

**User:** "Explain neural networks to me"
**Action:** Explain the concept. Do not trigger testing — the user wants to learn, not be tested.

**User:** "Help me study for my exam"
**Action:** Ask what they want help with. Only trigger Feynman workflow if they want to test their understanding of specific concepts.
