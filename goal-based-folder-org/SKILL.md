---
name: goal-focused-folder-organization
description: >
  Organizes files and folders based on user's goals and projects. Two modes: (1) Interactive for first-time setup - asks about goals, proposes structure, gets approval. (2) Autonomous for scheduled runs - uses saved config to sort new files. Triggers on "organize files", "clean up folder", "sort my downloads", or "auto-organize".
---

# Goal-Focused Folder Organization

Your folder structure should mirror your priorities. When files are organized by goals, not file types, your digital environment actively supports what you're trying to achieve.

## Modes

| Mode | Trigger | Behavior |
|------|---------|----------|
| **Interactive** | First run or no config file | Asks goals → proposes plan → gets approval → executes → offers automation |
| **Autonomous** | Config file exists + "auto" in prompt | Reads config → sorts new files → logs changes |

---

## Interactive Mode (First Run)

### Inputs Required
- Folder path to organize
- User's goals/projects (asked during session)
- Approval before executing

### Outputs
- Goal-based folder structure created
- Files moved to appropriate folders
- Cleanup candidates in `_To-Review/`
- Config file saved (`.goal-org-config.yaml`)
- Option to set up automation

### Workflow

**Step 1: Understand Goals**

Ask 2-3 questions:
- "What are your main projects or goals right now?"
- "What do you use this folder for most often?"

Skip if goals are known from context.

**Step 2: Analyze Files**

```bash
ls -la "/path/to/folder"
```

For ambiguous files, inspect contents. Identify duplicates, installers, incomplete downloads.

**Step 3: Propose Plan**

Present folder structure organized by goals:
```
01-Goal-Name/
02-Another-Goal/
03-Admin/
04-Personal/
_To-Review/
```

Wait for user approval before proceeding.

**Step 4: Execute**

After approval:
- Create folders
- Move files to appropriate locations
- Move duplicates/installers to `_To-Review/`
- Never hard delete

**Step 5: Save Config**

Create `.goal-org-config.yaml` in the folder:
```yaml
goals:
  - "Learning AI"
  - "Building startup"
folders:
  01-Learning-AI: "Courses, research, tutorials"
  02-Building-Startup: "Product docs, code, data"
schedule:
  enabled: false
```

**Step 6: Offer Automation**

Ask: "Want to automate this regularly?"

If yes:
- Ask: "How often? (daily, weekly, weekdays)"
- Ask: "What time?"
- Run: `scripts/setup-automation.sh <folder> <time> <frequency>`
- Update config with schedule settings

---

## Autonomous Mode (Scheduled Runs)

### Inputs Required
- Folder path with existing `.goal-org-config.yaml`
- Prompt containing "auto" (e.g., "auto-organize", "--auto")

### Outputs
- New files sorted into existing goal folders
- Ambiguous files moved to `_To-Review/`
- Log entry in `.goal-org.log`

### Workflow

**Step 1: Read Config**

```bash
cat .goal-org-config.yaml
```

If no config exists, switch to Interactive mode.

**Step 2: Identify New Files**

Find files not in any goal folder (sitting in root).

**Step 3: Sort Files**

For each new file:
- Match to existing goal folder based on content/name
- If confident match → move to that folder
- If ambiguous → move to `_To-Review/`

**Step 4: Log Results**

Append to `.goal-org.log`:
```
[2025-02-02 23:30] Sorted 5 files: 3 to 01-Learning-AI, 1 to 02-Building, 1 to _To-Review
```

---

## Safety Rules

- **Never hard delete** - always move to `_To-Review/`
- **Never create new top-level folders** in autonomous mode
- **Never modify existing files** - only move
- **Log all actions** in autonomous mode

---

## Scripts

### setup-automation.sh

Sets up scheduled runs via cron.

```bash
./scripts/setup-automation.sh <folder_path> <time> <frequency>
# Example: ./scripts/setup-automation.sh ~/Downloads 23:30 daily
```

Frequencies: `daily`, `weekly`, `weekdays`

---

## Examples

**Interactive first run:**
```
User: "Organize my Downloads folder"
Claude: Asks about goals → proposes structure → waits for approval
```

**Autonomous scheduled run:**
```
User: "Auto-organize my Downloads"
Claude: Reads config → sorts new files → logs results
```

**Ambiguous file:**
```
Found: mystery-file-abc123.pdf
Action: Move to _To-Review/ (user reviews later)
```
