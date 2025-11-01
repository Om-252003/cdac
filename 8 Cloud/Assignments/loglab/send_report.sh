#!/bin/bash

REPORT_DIR=~/loglab/reports

LATEST_TEXT=$(ls -t $REPORT_DIR/report_*.txt | head -1)
LATEST_JSON=$(ls -t $REPORT_DIR/report_*.json | head -1)

echo "Sending log reports..."

mail -s "Daily Log Report - $(date +%Y-%m-%d)" $USER <<EOF
Daily log report attached from automated system.

Latest text report: $LATEST_TEXT
Latest JSON report: $LATEST_JSON

EOF

echo "Email sent."

