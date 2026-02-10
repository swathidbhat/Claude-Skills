# Claude Skills

A collection of skills and capabilities for Claude AI.

## Overview

This repository contains custom skills, prompts, and configurations for enhancing Claude's abilities in various domains.

## Getting Started

### Prerequisites

- Access to Claude with Skills capability enabled
- Code execution and file creation enabled in Claude settings

### Installation

```bash
git clone https://github.com/swathidbhat/claude-skills.git
cd claude-skills
```

## Usage

### Enabling Skills in Claude

1. Navigate to **Settings > Capabilities** in Claude
2. Ensure **Code execution and file creation** is enabled
3. Toggle skills on/off in the **Skills** section

### Installing Skills from This Repo

1. Clone this repository (see Installation above)
2. Navigate to the skill folder you want to use
3. Zip the entire skill folder (e.g., `zip -r my-skill.zip my-skill/`)
4. In Claude, go to **Settings > Capabilities > Skills**
5. Upload the ZIP file to add the skill

### Invoking Skills

- **Direct invocation:** Type `/skill-name` to explicitly call a skill
- **Automatic:** Claude will automatically use relevant skills based on your task

## Project Structure

```
claude-skills/
├── digital-diet-curation/
├── fallacy-detector/
│   ├── references/
│   │   └── fallacies.md
│   └── SKILL.md
├── feynman-learning-technique/
│   ├── feynman-learning/
│   │   └── LICENSE
│   ├── feynman-learning.skill
│   └── SKILL.md
├── goal-based-folder-org/
│   ├── assets/
│   │   └── config-template.yaml
│   ├── scripts/
│   │   └── setup-automation.sh
│   ├── goal-focused-folder-organization.skill
│   ├── LICENSE
│   ├── README.md
│   └── SKILL.md
├── non-fiction-book-review/
│   ├── LICENSE
│   └── SKILL.md
├── LICENSE
└── README.md
```

Each skill is a folder containing a `SKILL.md` file with instructions and metadata.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.