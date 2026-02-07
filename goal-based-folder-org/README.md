# Goal-Focused Folder Organization

A Claude skill that organizes files and folders based on your goals and ongoing projects, rather than by file type.

## Why This Exists

Your folder structure should mirror your priorities. When files are organized by goals, not file types, your digital environment actively supports what you're trying to achieve.

This skill transforms chaotic Downloads folders into goal-aligned workspaces.

## Two Modes

| Mode | When to Use | What Happens |
|------|-------------|--------------|
| **Interactive** | First time organizing a folder | Claude asks about your goals, proposes a structure, waits for your approval, then organizes |
| **Autonomous** | Regular scheduled cleanup | Claude reads your saved preferences and sorts new files automatically |

---

## Interactive Mode (First Run)

### Inputs

| Input | Required | Description |
|-------|----------|-------------|
| Folder path | Yes | The folder to organize (e.g., `~/Downloads`) |
| Your goals | Yes | Claude will ask: "What are your main projects or goals?" |
| Approval | Yes | Claude shows the plan and waits for you to approve before moving files |

### Outputs

| Output | Description |
|--------|-------------|
| Goal-based folders | `01-Learning-AI/`, `02-Project-Name/`, etc. |
| Organized files | Files moved to appropriate goal folders |
| `_To-Review/` folder | Duplicates, installers, ambiguous files |
| `.goal-org-config.yaml` | Saves your goals and folder structure for future runs |
| Automation setup (optional) | If you want, Claude sets up scheduled runs |

### Example

```
You: "Organize my Downloads folder"

Claude: "What are your main projects or goals right now?"

You: "Learning AI and building a side project"

Claude: "Here's my proposed structure:
  01-Learning-AI/
  02-Side-Project/
  03-Admin/
  _To-Review/

Approve?"

You: "Yes"

Claude: [organizes files]
        "Done! Want to automate this regularly?"

You: "Yes, daily at 11:30pm"

Claude: [sets up automation]
```

---

## Autonomous Mode (Scheduled Runs)

### Inputs

| Input | Required | Description |
|-------|----------|-------------|
| Folder path | Yes | Must contain `.goal-org-config.yaml` from a previous interactive run |
| "auto" keyword | Yes | Include "auto" in prompt (e.g., "auto-organize") |

### Outputs

| Output | Description |
|--------|-------------|
| Files sorted | New files moved to existing goal folders |
| `_To-Review/` | Ambiguous files placed here for manual review |
| `.goal-org.log` | Log of what was moved and when |

### Example

```
[Scheduled at 11:30 PM]

Claude: Reads .goal-org-config.yaml
        Finds 3 new files in Downloads root
        Moves report.pdf → 01-Learning-AI/
        Moves invoice.pdf → 03-Admin/
        Moves mystery.zip → _To-Review/
        Logs: "[2025-02-02 23:30] Sorted 3 files"
```

---

## File Structure

```
goal-focused-folder-organization/
├── SKILL.md                      # Skill instructions for Claude
├── README.md                     # This file
├── LICENSE                       # MIT License
├── scripts/
│   └── setup-automation.sh       # Sets up scheduled runs
└── assets/
    └── config-template.yaml      # Template for config file
```

## Installation

### Claude Code CLI

```bash
mkdir -p ~/.claude/skills
cp -r goal-focused-folder-organization ~/.claude/skills/
```

### Manual

Copy `SKILL.md` to your skills directory.

## Setting Up Automation

After your first interactive run, the automation script can schedule regular cleanups:

```bash
./scripts/setup-automation.sh ~/Downloads 23:30 daily
```

Options for frequency: `daily`, `weekly`, `weekdays`

## Safety

- **Never hard deletes** - files always go to `_To-Review/` first
- **Never creates new folders** in autonomous mode - only uses existing structure
- **Logs all actions** - check `.goal-org.log` to see what changed

## Contributors

- [Swathi Bhat](https://github.com/swathibhat)
- Claude (Anthropic)

## License

MIT License - see [LICENSE](LICENSE)
