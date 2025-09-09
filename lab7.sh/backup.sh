#!/bin/bash
# backup.sh – Automates backup of .txt files with timestamp

backup_dir="backup"
mkdir -p "$backup_dir"

timestamp=$(date +"%Y%m%d_%H%M%S")

echo "🔍 Searching for .txt files in current directory..."
count=0

for file in *.txt; do
    if [ -f "$file" ]; then
        new_name="${file%.txt}_$timestamp.txt"
        cp "$file" "$backup_dir/$new_name"
        echo "✅ Backed up: $file → $backup_dir/$new_name"
        ((count++))
    fi
done

if [ $count -eq 0 ]; then
    echo "⚠ No .txt files found to back up."
else
    echo "🎉 Backup completed! ($count files copied)"
fi
