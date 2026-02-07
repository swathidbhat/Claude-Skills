---
name: book-review
description: Document a reader's experience with a non-fiction book through active recall and guided reflection. Triggers when user wants a book review/summary/notes AND provides their highlights, annotations, or reading data (JSON, HTML, CSV, export, copy-paste). Interviews the user with four reflection questions before evaluating their recall against their own highlights, checking factual accuracy, and flagging missed themes. Produces a one-page summary in the user's voice. Do not trigger for fiction, or requests without the user's own reading data.
---

# Book Review Skill

## Introduction

### Purpose

This skill helps readers document their experience with a book — not produce a generic summary.

A book review should capture what *you* noticed, what *your* mind caught onto, what resonated with *your* context. The interactive interview exists because recall is the point: articulating what you remember cements learning. AI fills gaps, not replaces thinking.

The goal is threefold:
1. **Prompt active recall** — force articulation before showing what was highlighted
2. **Surface blind spots** — compare stated understanding against actual annotations
3. **Document the reader's experience** — produce a summary that reflects their perspective, not a Wikipedia entry

This skill should reduce over-reliance on AI by making the user do the work first.

### When to Apply

Trigger this skill when:
- User mentions wanting a book review, book summary, or book notes
- User provides reading data: highlights, annotations, bookmarks, or notes
- Format can be anything: JSON, HTML, CSV, export, plain copy-paste

Do not trigger for:
- Fiction books (this workflow assumes non-fiction with arguments/themes)
- Requests for a summary without the user's own reading data
- Academic citation or bibliography tasks

---

## What This Skill Governs

### Workflow

**1. Intake**

Parse the user's reading data. Extract:
- Highlights/quotes
- Bookmarks (chapter locations)
- User annotations/notes

Confirm book title and author. If unclear, ask.

**2. Interview**

Ask all four questions at once:

```
Before I evaluate your notes, I'd like to hear your recall. Answer as briefly or thoroughly as you like:

1. What was the core argument of the book? What were the key supporting points?
2. What did you find insightful?
3. What were you skeptical about?
4. How can you apply what you learned?
```

Wait for the user's full response before proceeding.

**3. Evaluate**

After receiving answers, assess against three sources:

**A. Their highlights**
- Identify themes they highlighted but didn't mention
- Note bookmarked chapters they didn't discuss
- Check if stated "core argument" aligns with what they actually marked

**B. Factual accuracy**
- Check for inaccuracies in their recall
- Correct gently with evidence from their own highlights or reliable sources

**C. External themes**
- Search reliable sources (publisher descriptions, reputable reviews, author interviews) for major themes
- If they missed a commonly-discussed theme, flag it: "Critics often highlight X as a central theme — your highlights touch on this in Chapter Y, but you didn't mention it. Worth revisiting?"

**Tone:** Gentle nudges. The user decides what matters to them.

Examples:
- "You highlighted several passages about X but didn't mention it — anything there?"
- "Your heaviest annotations were in the section on Y. Deliberately omitted, or slipped your mind?"
- "One factual note: the book states Z happened in 1974, not 1971."
- "Reviewers frequently cite the author's argument about W as central. You bookmarked that chapter but didn't mention it — intentional?"

**Power stays with the user.** After flagging gaps, ask: "Any of these worth adding to your summary, or are you happy with your current framing?"

**4. Output**

Create a one-page summary combining:
- **Core thesis** — from user's response, supplemented by highlights
- **Key insights** — what they found valuable + overlooked highlights
- **Critiques** — their stated skepticism
- **Applications** — how they'll use it
- **Gaps noted** — brief mention of themes they chose to omit (optional, user decides)

**5. Export**

Offer:
1. Markdown file
2. Word document (.docx) for Google Drive — follow `/mnt/skills/public/docx/SKILL.md`

---

## Examples

### Correct Usage

**User:** "I just finished Chokepoints by Edward Fishman. Here are my highlights: [JSON link]. Can you help me create a book review?"

**Claude:** Parses JSON. Confirms title/author. Asks the four questions. Waits.

**User:** Responds to all four.

**Claude:** Evaluates recall against highlights. Notes: "You highlighted extensively on the petrodollar mechanics but didn't mention it — worth including?" Checks reliable sources, flags one theme the user missed. Asks if they want to incorporate any gaps. Produces one-page summary in user's writing style. Offers export.

---

### Incorrect Usage

| Scenario | Why it's wrong |
|----------|----------------|
| Producing a summary immediately without asking the four questions | Skips the recall step; defeats the purpose |
| Writing in generic "book report" style | Should match user's voice and style |
| Overwhelming user with every gap found | User decides what matters; flag, don't lecture |
| Using promotional language ("must-read," "brilliant") | Analytical, not promotional |
| Searching extensively to pad the summary | Search only to verify facts or flag missed themes |
| Triggering for fiction or books without user's reading data | Skill assumes non-fiction + user annotations |

---

## Principles

1. **User's voice first.** Match their writing style. The summary reflects their experience, not a generic overview.

2. **Recall before assistance.** Always interview before evaluating. The act of articulation is the learning.

3. **Highlights reveal attention.** What someone marks shows what resonated. Use this as ground truth for evaluating recall.

4. **Gaps are suggestions, not corrections.** Flag what they missed. They decide what to keep.

5. **No promotional language.** Write clean, analytical prose. No "definitive," "essential," "groundbreaking."

6. **Brevity over completeness.** One page means tradeoffs. Prioritize what the user cared about.

---

## Format Handling

| Format | Parsing approach |
|--------|------------------|
| JSON | Parse `highlights`, `bookmarks`, `notes` arrays |
| HTML | Extract highlighted text, annotations |
| CSV | Map columns to quotes/notes/chapters |
| Export | Parse clippings format |
| Plain text | Treat as raw highlights; ask for clarification if ambiguous |

If format is unclear, ask the user to clarify structure.
