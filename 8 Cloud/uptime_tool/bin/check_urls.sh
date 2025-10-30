#!/bin/bash

# Check if parallel mode is requested
PARALLEL=false
if [ "$1" == "--parallel" ]; then
    PARALLEL=true
fi

# Uptime check script

TARGET_FILE=~/uptime_tool/targets.txt
LOG_FILE=~/uptime_tool/logs/uptime_$(date +%Y%m%d).log

# Initialize counters
OK_COUNT=0
SLOW_COUNT=0
DOWN_COUNT=0
TOTAL_COUNT=0

# Log file size check and rotation (after 1MB)
if [ $(stat -c %s "$LOG_FILE") -gt 1048576 ]; then
    mv "$LOG_FILE" "$LOG_FILE.old"
    touch "$LOG_FILE"
fi

echo "----- Uptime Check Started: $(date) -----" >> $LOG_FILE

check_url() {
    URL=$1

    # Skip empty lines
    [ -z "$URL" ] && return

    RESULT=$(curl -o /dev/null -s -w "%{http_code} %{time_total}" "$URL")
    STATUS=$(echo $RESULT | awk '{print $1}')
    TIME=$(echo $RESULT | awk '{print $2}')

    # Determine status
    if [ "$STATUS" != "200" ]; then
        ALERT="DOWN"
    elif (( $(echo "$TIME > 1" | bc -l) )); then
        ALERT="SLOW"
    else
        ALERT="OK"
    fi

    LOG_LINE="$(date '+%Y-%m-%d %H:%M:%S') | $URL | Status: $STATUS | Time: ${TIME}s | $ALERT"
    echo "$LOG_LINE" >> $LOG_FILE

    if [ "$ALERT" != "OK" ]; then
        echo "$LOG_LINE" >> ~/uptime_tool/logs/alerts.log
    fi

    # Update counters
    ((TOTAL_COUNT++))

    if [ "$ALERT" == "OK" ]; then
        ((OK_COUNT++))
    elif [ "$ALERT" == "SLOW" ]; then
        ((SLOW_COUNT++))
    elif [ "$ALERT" == "DOWN" ]; then
        ((DOWN_COUNT++))
    fi
}

while read -r URL; do
    if [ "$PARALLEL" = true ]; then
        check_url "$URL" &
    else
        check_url "$URL"
    fi
done < "$TARGET_FILE"

# If parallel, wait for all jobs
if [ "$PARALLEL" = true ]; then
    wait
fi

echo "----- Check Completed -----" >> $LOG_FILE
echo "Log saved to $LOG_FILE"

# Write summary report
echo "----- Summary Report -----" >> $LOG_FILE
echo "Total URLs Checked: $TOTAL_COUNT" >> $LOG_FILE
echo "OK Responses: $OK_COUNT" >> $LOG_FILE
echo "SLOW Responses: $SLOW_COUNT" >> $LOG_FILE
echo "DOWN Responses: $DOWN_COUNT" >> $LOG_FILE

# =============================
# Daily Trend Comparison (Stretch Goal 1)
# =============================

# Save today's summary for trend comparison
SUMMARY_FILE="$LOG_FILE.summary"
echo "$TOTAL_COUNT $OK_COUNT $SLOW_COUNT $DOWN_COUNT" > "$SUMMARY_FILE"

# Compare with yesterday's summary
YESTERDAY_FILE=~/uptime_tool/logs/summary_$(date -d 'yesterday' +%Y%m%d).summary

echo "Daily Trend Comparison:" >> $LOG_FILE

if [ -f "$YESTERDAY_FILE" ]; then
    read PREV_TOTAL PREV_OK PREV_SLOW PREV_DOWN < "$YESTERDAY_FILE"

    # Calculate difference
    TOTAL_DIFF=$((TOTAL_COUNT - PREV_TOTAL))
    OK_DIFF=$((OK_COUNT - PREV_OK))
    SLOW_DIFF=$((SLOW_COUNT - PREV_SLOW))
    DOWN_DIFF=$((DOWN_COUNT - PREV_DOWN))

    # Write comparison to log
    echo "Total URLs difference: $TOTAL_DIFF" >> $LOG_FILE
    echo "OK Responses difference: $OK_DIFF" >> $LOG_FILE
    echo "SLOW Responses difference: $SLOW_DIFF" >> $LOG_FILE
    echo "DOWN Responses difference: $DOWN_DIFF" >> $LOG_FILE
else
    echo "No previous data to compare." >> $LOG_FILE
fi

# =============================
# Generate JSON Report (Stretch Goal 2)
# =============================

JSON_FILE="$LOG_FILE.json"
{
    echo "{"
    echo "  \"date\": \"$(date +%Y-%m-%d)\","
    echo "  \"total_requests\": $TOTAL_COUNT,"
    echo "  \"ok_responses\": $OK_COUNT,"
    echo "  \"slow_responses\": $SLOW_COUNT,"
    echo "  \"down_responses\": $DOWN_COUNT,"
    echo "  \"urls\": ["

    # Iterate over each URL in targets.txt to add detailed info
    while read -r URL; do
        RESULT=$(curl -o /dev/null -s -w "%{http_code} %{time_total}" "$URL")
        STATUS=$(echo $RESULT | awk '{print $1}')
        TIME=$(echo $RESULT | awk '{print $2}')
        
        # Format each URL entry in the JSON output
        echo "    {\"url\": \"$URL\", \"status\": \"$STATUS\", \"time\": \"$TIME\"},"
    done < "$TARGET_FILE"
    
    echo "  ]"
    echo "}"
} > "$JSON_FILE"

echo "JSON report saved to $JSON_FILE"

