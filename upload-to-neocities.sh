#!/bin/bash

# Neocities Upload Script
# Usage: ./upload-to-neocities.sh

# You need to set these variables:
NEOCITIES_USERNAME="your-username"
NEOCITIES_PASSWORD="your-password"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "🚀 Uploading to Neocities..."

# Check if credentials are set
if [ "$NEOCITIES_USERNAME" = "your-username" ] || [ "$NEOCITIES_PASSWORD" = "your-password" ]; then
    echo -e "${RED}❌ Please edit this script and set your Neocities username and password${NC}"
    echo "Edit upload-to-neocities.sh and replace 'your-username' and 'your-password'"
    exit 1
fi

# Upload HTML files
for file in *.html; do
    if [ -f "$file" ]; then
        echo "📄 Uploading $file..."
        curl -F "$file=@$file" -u "$NEOCITIES_USERNAME:$NEOCITIES_PASSWORD" "https://neocities.org/api/upload"
        echo ""
    fi
done

# Upload CSS files
for file in *.css; do
    if [ -f "$file" ]; then
        echo "🎨 Uploading $file..."
        curl -F "$file=@$file" -u "$NEOCITIES_USERNAME:$NEOCITIES_PASSWORD" "https://neocities.org/api/upload"
        echo ""
    fi
done

# Upload images (if any)
for file in *.{jpg,jpeg,png,gif}; do
    if [ -f "$file" ]; then
        echo "🖼️  Uploading $file..."
        curl -F "$file=@$file" -u "$NEOCITIES_USERNAME:$NEOCITIES_PASSWORD" "https://neocities.org/api/upload"
        echo ""
    fi
done

# Upload fonts directory
if [ -d "fonts" ]; then
    echo "🔤 Uploading fonts..."
    for file in fonts/*; do
        if [ -f "$file" ]; then
            filename=$(basename "$file")
            curl -F "fonts/$filename=@$file" -u "$NEOCITIES_USERNAME:$NEOCITIES_PASSWORD" "https://neocities.org/api/upload"
        fi
    done
    echo ""
fi

# Upload backs directory
if [ -d "backs" ]; then
    echo "🖼️  Uploading background images..."
    for file in backs/*; do
        if [ -f "$file" ]; then
            filename=$(basename "$file")
            curl -F "backs/$filename=@$file" -u "$NEOCITIES_USERNAME:$NEOCITIES_PASSWORD" "https://neocities.org/api/upload"
        fi
    done
    echo ""
fi

echo -e "${GREEN}✅ Upload complete! Check your site at https://your-username.neocities.org${NC}"
