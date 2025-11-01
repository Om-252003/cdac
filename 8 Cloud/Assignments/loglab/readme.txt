Linux Log Automation Assignment

Objective:
To automate log processing, archiving and verification without sudo, using Bash and common Linux CLI tools.

Directory Structure:
~/loglab/raw       -> incoming logs
~/loglab/archive   -> archived rotated logs
~/loglab/reports   -> generated reports
~/loglab/pipeline.log -> automation log

Scripts:
1. log_report.sh
   - Reads access.log
   - Finds total requests, unique IPs, top IPs, HTTP status codes, bytes count

2. rotate_logs.sh
   - Moves raw log to archive with date
   - Compresses archive
   - Generates SHA256 checksum

3. verify_archive.sh
   - Verifies archived log checksum

4. run_daily.sh
   - Daily pipeline automation
   - Calls rotate, report, verify scripts
   - Logs output to pipeline.log

Tools used:
awk, sort, uniq, wc, sha256sum, tar, gzip, date

Result:
Complete log automation pipeline built in Bash.

