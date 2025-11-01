#!/bin/bash

echo "=== Daily Log Automation Started ==="

# Step 1: Rotate and archive logs
~/loglab/rotate_logs.sh

# Step 2: Generate report
~/loglab/log_report.sh

# Step 3: Verify archive integrity
~/loglab/verify_archive.sh

echo "=== Daily Log Automation Completed ==="

