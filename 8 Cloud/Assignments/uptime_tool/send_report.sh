#!/bin/bash

REPORT_DIR=~/uptime_tool/logs
LOG_FILE=$(ls -t $REPORT_DIR/uptime_*.log | head -1)
JSON_FILE=$(ls -t $REPORT_DIR/uptime_*.json | head -1)

echo "Sending log reports..."

# Send email with both log and JSON attachments
mail -s "Daily Log Report - $(date +%Y-%m-%d)" -A "$LOG_FILE" -A "$JSON_FILE" $USER <<EOF
Daily log report attached from automated system.

Latest text report: $LOG_FILE
Latest JSON report: $JSON_FILE
EOF

echo "Email sent."

