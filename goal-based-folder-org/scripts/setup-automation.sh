#!/bin/bash
# Setup automated folder organization
# Usage: ./setup-automation.sh <folder_path> <time> <frequency>
# Example: ./setup-automation.sh ~/Downloads 23:30 daily

set -e

FOLDER_PATH="${1:-$HOME/Downloads}"
TIME="${2:-23:30}"
FREQUENCY="${3:-daily}"

# Parse time
HOUR=$(echo "$TIME" | cut -d: -f1)
MINUTE=$(echo "$TIME" | cut -d: -f2)

# Build cron schedule based on frequency
case "$FREQUENCY" in
  daily)
    SCHEDULE="$MINUTE $HOUR * * *"
    ;;
  weekly)
    SCHEDULE="$MINUTE $HOUR * * 0"  # Sundays
    ;;
  weekdays)
    SCHEDULE="$MINUTE $HOUR * * 1-5"
    ;;
  *)
    echo "Unknown frequency: $FREQUENCY (use: daily, weekly, weekdays)"
    exit 1
    ;;
esac

# Find claude CLI
CLAUDE_PATH=$(which claude 2>/dev/null || echo "/usr/local/bin/claude")

if [ ! -f "$CLAUDE_PATH" ]; then
  echo "Error: Claude CLI not found. Install with: brew install claude"
  exit 1
fi

# Check for config file
CONFIG_FILE="$FOLDER_PATH/.goal-org-config.yaml"
if [ ! -f "$CONFIG_FILE" ]; then
  echo "Error: Config file not found at $CONFIG_FILE"
  echo "Run the skill interactively first to create it."
  exit 1
fi

# Create the cron command
CRON_CMD="$SCHEDULE cd $FOLDER_PATH && $CLAUDE_PATH -p \"Auto-organize this folder using .goal-org-config.yaml. Move new files to existing goal folders. Move ambiguous files to _To-Review. Be brief.\" >> $FOLDER_PATH/.goal-org.log 2>&1"

# Add to crontab (avoiding duplicates)
(crontab -l 2>/dev/null | grep -v "goal-org-config"; echo "$CRON_CMD") | crontab -

echo "Automation scheduled!"
echo "  Folder: $FOLDER_PATH"
echo "  Time: $TIME"
echo "  Frequency: $FREQUENCY"
echo "  Log file: $FOLDER_PATH/.goal-org.log"
echo ""
echo "To remove: crontab -e and delete the goal-org line"
