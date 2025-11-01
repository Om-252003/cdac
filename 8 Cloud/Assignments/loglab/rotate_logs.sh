#!/bin/bash

RAW_LOG=~/loglab/raw/access.log
ARCHIVE_DIR=~/loglab/archive

# Create archive filename
DATE=$(date +%Y%m%d_%H%M%S)
ARCHIVE_FILE="access-$DATE.log"
ARCHIVE_PATH="$ARCHIVE_DIR/$ARCHIVE_FILE"

echo "Rotating logs for $DATE..."

# Move current log to archive
mv "$RAW_LOG" "$ARCHIVE_PATH"

# Create a new empty access log
touch "$RAW_LOG"

# Compress archived log
tar -czf "$ARCHIVE_PATH.tar.gz" -C "$ARCHIVE_DIR" "$ARCHIVE_FILE"

# Remove raw .log after compression
rm "$ARCHIVE_PATH"

# Create checksum for compressed file
sha256sum "$ARCHIVE_PATH.tar.gz" > "$ARCHIVE_PATH.tar.gz.sha256"

echo "Log rotation and compression complete."
echo "Archive: $ARCHIVE_PATH.tar.gz"
echo "Checksum file: $ARCHIVE_PATH.tar.gz.sha256"


# Retain only last 7 archives
echo "Cleaning up old archives..."

ARCHIVES=($(ls -1t "$ARCHIVE_DIR"/*.tar.gz 2>/dev/null))

if [ ${#ARCHIVES[@]} -gt 7 ]; then
    for file in "${ARCHIVES[@]:7}"; do
        echo "Deleting old archive: $file"
        rm "$file"
        rm "$file.sha256" 2>/dev/null
    done
fi



