#!/bin/bash

# Update last_modified_at date in about.md
ABOUT_FILE="_pages/about.md"
CURRENT_DATE=$(date +%Y-%m-%d)

if [ -f "$ABOUT_FILE" ]; then
    # Update the last_modified_at field
    sed -i.bak "s/last_modified_at: .*/last_modified_at: $CURRENT_DATE/" "$ABOUT_FILE"
    rm -f "$ABOUT_FILE.bak"
    echo "Updated last_modified_at to $CURRENT_DATE in $ABOUT_FILE"
else
    echo "Error: $ABOUT_FILE not found"
    exit 1
fi 