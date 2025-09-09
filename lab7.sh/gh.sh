#!/bin/bash
# starter_kit.sh – Build a starter project environment automatically

base_dir="project"
sub_dirs=("scripts" "docs" "data")

echo "🚀 Creating Starter Kit..."

mkdir -p "$base_dir"

for dir in "${sub_dirs[@]}"; do
    mkdir -p "$base_dir/$dir"
    readme="$base_dir/$dir/README.md"
    if [ ! -f "$readme" ]; then
        echo "# 📄 README for $dir folder" > "$readme"
        echo "This folder is part of the starter kit." >> "$readme"
    fi
    echo "✅ Created: $base_dir/$dir (with README.md)"
done

root_readme="$base_dir/README.md"
if [ ! -f "$root_readme" ]; then
    echo "# 🚀 Project Starter Kit" > "$root_readme"
    echo "This is the root README for your new project." >> "$root_readme"
fi

echo "🎉 Starter Kit Ready!"
