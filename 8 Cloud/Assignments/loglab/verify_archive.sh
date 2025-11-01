#!/bin/bash

ARCHIVE_DIR=~/loglab/archive

echo "Verifying archived logs integrity..."

for FILE in "$ARCHIVE_DIR"/*.tar.gz; do
    CHECKSUM_FILE="$FILE.sha256"

    if [ -f "$CHECKSUM_FILE" ]; then
        # Verify checksum
        sha256sum -c "$CHECKSUM_FILE"
    else
        echo "No checksum file found for $FILE"
    fi
done

echo "Verification complete."


