# Uptime Monitoring Toolkit

## Overview

This project is a basic uptime monitoring toolkit built with Bash. It checks the status and response time of websites, logs the results, and generates reports. It also includes system inspection tools to monitor the server’s performance.

## Features

1. **URL Monitoring**:
   - Checks the availability and response time of websites.
   - Logs status codes and response times.
   - Supports parallel checks for faster execution.
   - Generates daily trend comparison reports.

2. **Log Rotation**:
   - Automatically rotates logs once they exceed 1MB.
   - Old logs are saved with the `.old` extension.

3. **JSON Reports**:
   - Generates daily JSON reports that include:
     - Date
     - Total requests
     - Counts of OK, SLOW, and DOWN responses
     - Detailed data for each URL checked

4. **System Inspection Toolkit** (`ops.sh`):
   - Allows inspection of system performance:
     - Top memory and CPU processes
     - Zombie processes
     - Open ports
     - Disk usage

5. **Email Reporting**:
   - Sends daily email reports with both the text log and JSON file attached.

## Usage

### 1. URL Monitoring

To check the URLs and generate reports:

```bash
~/uptime_tool/bin/check_urls.sh

For parallel execution, use:
~/uptime_tool/bin/check_urls.sh --parallel

2. System Inspection

To inspect the system’s memory, CPU, zombie processes, open ports, and disk usage:
~/uptime_tool/bin/ops.sh

3. Email Reporting

To manually send the latest log and JSON report via email:
~/uptime_tool/send_report.sh

