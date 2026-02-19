# Skill: Writing Skills

```yaml
name: meta-skill-writing
description: >
  How to write a skill.md document for Claude. Defines the compulsory format, structure,
  and quality bar for any skill added to the Skills/ folder.
```

---

### Purpose

Skills prevent repeated work. They capture what was learned — especially failures and edge cases — so the next run is faster and correct.

**Principles:**
- **Record failures, not just steps.** The dead ends and gotchas are the expensive part. The happy path is obvious.
- **One skill = one job.** Research is not analysis. Extraction is not visualization. Split if it does two things.
- **Specific enough to execute, general enough to reuse.** Include exact endpoints and code. Flag what might change.
- **Every instruction needs a reason.** "Batch in groups of 5" is incomplete. "Batch in groups of 5 because more gets rate-limited" is useful.
- **Writing style.** Write clearly, precisely, and accurately. This is not a marketing doc. 

---

### When to Use

Write a new skill when:
- You've completed a non-trivial workflow that took multiple attempts to get right
- The workflow will likely be repeated for different inputs (different products, different companies, different platforms)
- There were meaningful gotchas, failures, or non-obvious decisions during the work

Do NOT write a skill for:
- One-off tasks that won't recur
- Trivial operations (how to open a file, how to run a command)
- Work that is already well-documented elsewhere (link to it instead)

---

### What This Skill Governs

The structure, format, and quality bar for every skill document in the `Skills/` folder.

---

### Compulsory Format

Every skill MUST begin with a YAML block:

```yaml
name: kebab-case-skill-name
description: >
  One to three sentences. What does this skill do, at a glance?
  Should be concrete enough that someone can decide whether this
  is the right skill without reading further.
```

---

### Required Sections

Every skill MUST contain these sections, in this order:

#### 1. Purpose

Why does this skill exist? What principles guide it?

- State the problem this skill solves (not the solution — the problem)
- List the principles that govern how the work should be done
- Each principle should have a reason ("do X **because** Y")

**Bad:** "Always use the API"
**Good:** "Discover and use internal APIs rather than scraping HTML, because APIs return structured JSON that's faster, more reliable, and less likely to break when the site updates its frontend."

#### 2. When to Use

Two lists:
- **Use when:** — specific trigger conditions (user says X, input looks like Y)
- **Do NOT use when:** — boundary conditions that look similar but need a different skill

Be concrete. "When the user wants data" is useless. "When the user provides a Gartner product URL or asks for Gartner reviews by product name" is actionable.

#### 3. What It Governs

One paragraph or a short list describing the scope. What decisions does this skill make? What does it explicitly NOT cover?

This prevents scope creep. If a skill governs "extraction" it should not contain analysis steps.

#### 4. Process

The numbered steps to execute the skill. For each step:
- What to do
- How to do it (include code snippets, commands, or specific instructions where relevant)
- What to watch out for

Include enough detail that the skill can be followed without the original context. But don't over-explain obvious things.

**Flag what's fragile.** If an API endpoint might change, say so. If a CSS selector is brittle, say so. If a workaround is needed for a platform limitation, explain the limitation.

#### 5. Known Gotchas

A table or list of problems encountered during the original work:

| Issue | Cause | Fix |
|-------|-------|-----|
| Specific symptom | Why it happens | What to do about it |

This is the most valuable section. It's the institutional memory that prevents re-learning the same lessons.

#### 6. Output Specification

What does this skill produce? Be exact:
- File names and naming convention
- File format (JSON, markdown, HTML, etc.)
- Key fields or structure
- What is included vs. excluded

#### 7. Examples

**Positive examples** — Correct invocations showing the skill used properly. Include:
- The trigger (what the user said)
- The key steps taken
- The output produced

**Negative examples** — Incorrect invocations showing common misapplications. Include:
- The trigger (what the user said)
- Why this skill does NOT apply
- What should be done instead

Aim for at least 2 positive and 2 negative examples.

---

### Quality Bar

Before adding a skill to the `Skills/` folder, check:

- [ ] YAML header has `name` and `description`
- [ ] Purpose section explains WHY, not just WHAT
- [ ] Every principle has a reason
- [ ] "When to use" has both positive and negative conditions
- [ ] "What it governs" sets clear boundaries
- [ ] Process steps are numbered and executable
- [ ] Code snippets are included where the steps are non-obvious
- [ ] Fragile elements (endpoints, selectors, tokens) are flagged
- [ ] Known gotchas table has at least 3 entries
- [ ] Output spec defines file names, format, and structure
- [ ] At least 2 positive and 2 negative examples
- [ ] The skill does ONE job (if it does two, split it)

---

### Examples

#### Positive

**"We just figured out how to extract Gartner reviews at scale"**
- Write a skill: `gartner_research_skill.md`
- Purpose: encoding the API discovery, batch fetching, and blob download patterns
- Gotchas: JS output truncation, sessionStorage wipe, duplicate review IDs
- Output: JSON + markdown files
- This is a good skill because it was hard-won, will recur, and has non-obvious steps

**"We built a pipeline to analyze review themes and produce a summary"**
- Write a skill: `review_analysis_skill.md`
- Purpose: encoding theme categorization, frequency counting, reviewer profiling
- Separate from the research skill (different job)
- This is a good skill because the analysis approach (how to categorize, what counts as a "theme") involves judgment calls worth documenting

#### Negative

**"I opened a file and renamed a variable"**
- Do NOT write a skill
- This is trivial, non-recurring, and needs no playbook

**"We researched Gartner AND analyzed the results AND built a dashboard"**
- Do NOT write this as one skill
- Split into three: research, analysis, visualization
- Each has different triggers, different tools, different outputs

**"Here's how to use Chart.js"**
- Do NOT write a skill
- This is general knowledge well-documented elsewhere
- Link to the Chart.js docs instead
