#!/bin/bash

# log_report.sh
# This script reads raw log file access.log and generates reports
# Output goes to ~/loglab/reports

RAW_LOG=~/loglab/raw/access.log
REPORTS_DIR=~/loglab/reports

echo "Generating log report..."

# Report file name with timestamp
REPORT_FILE="$REPORTS_DIR/report_$(date +%Y%m%d_%H%M%S).txt"

# Count total requests (each log line = one request)
TOTAL_REQUESTS=$(wc -l < "$RAW_LOG")

# write the count in report file.
echo "Total Requests: $TOTAL_REQUESTS" > "$REPORT_FILE"

# Count unique IP addresses
UNIQUE_IPS=$(awk '{print $1}' "$RAW_LOG" | sort | uniq | wc -l)
echo "Unique IPs: $UNIQUE_IPS" >> "$REPORT_FILE"

# Top 5 IPs making requests
echo "Top IPs:" >> "$REPORT_FILE"
awk '{print $1}' "$RAW_LOG" | sort | uniq -c | sort -nr | head -5 >> "$REPORT_FILE"

# HTTP status code counts
echo "HTTP Status Codes:" >> "$REPORT_FILE"
awk '{print $8}' "$RAW_LOG" | sed 's/"//g' | sort | uniq -c | sort -nr >> "$REPORT_FILE"

# Total bytes sent
TOTAL_BYTES=$(awk '{sum += $9} END {print sum}' "$RAW_LOG")
echo "Total Bytes Sent: $TOTAL_BYTES" >> "$REPORT_FILE"


############# stretch Goal ################

# Save summary for trend tracking
TODAY=$(date +%Y%m%d)
SUMMARY_FILE="$REPORTS_DIR/summary_$TODAY.txt"

echo "$TOTAL_REQUESTS $UNIQUE_IPS $TOTAL_BYTES" > "$SUMMARY_FILE"

# Daily trend comparison
# Get yesterday date in a portable way
# Detect yesterday file: test mode uses last summary if exists
LAST_SUMMARY=$(ls -1 "$REPORTS_DIR"/summary_*.txt 2>/dev/null | tail -n 1)

if [ -n "$LAST_SUMMARY" ] && [[ "$LAST_SUMMARY" != "$SUMMARY_FILE" ]]; then
    read PREV_REQUESTS PREV_IPS PREV_BYTES < "$LAST_SUMMARY"
    
    REQ_DIFF=$((TOTAL_REQUESTS - PREV_REQUESTS))
    IP_DIFF=$((UNIQUE_IPS - PREV_IPS))
    BYTE_DIFF=$((TOTAL_BYTES - PREV_BYTES))

    echo "Requests change: $REQ_DIFF" >> "$REPORT_FILE"
    echo "Unique IPs change: $IP_DIFF" >> "$REPORT_FILE"
    echo "Bytes transferred change: $BYTE_DIFF" >> "$REPORT_FILE"
else
    echo "No previous data to compare" >> "$REPORT_FILE"
fi


# 2)  JSON output file
JSON_FILE="$REPORTS_DIR/report_$(date +%Y%m%d).json"

# Create JSON
{
echo "{"
echo "  \"date\": \"$(date +%Y-%m-%d)\","
echo "  \"total_requests\": $TOTAL_REQUESTS,"
echo "  \"unique_ips\": $UNIQUE_IPS,"

echo "  \"top_ips\": ["
awk '{print $1}' "$RAW_LOG" | sort | uniq -c | sort -nr | head -5 | \
    awk '{printf "    {\"ip\": \"%s\", \"count\": %s},\n", $2, $1}'
echo "  ],"

echo "  \"http_status_codes\": {"
awk '{print $9}' "$RAW_LOG" | sort | uniq -c | sort -nr | \
    awk '{printf "    \"%s\": %s,\n", $2, $1}'
echo "  },"

echo "  \"total_bytes\": $TOTAL_BYTES"
echo "}"
} > "$JSON_FILE"

