---

✅ Script: starter_kit.sh

#!/bin/bash
# starter_kit.sh – Build a starter project environment automatically

# --- Setup Section ---
base_dir="project"
sub_dirs=("scripts" "docs" "data")

echo "🚀 Creating Starter Kit..."

# Create main project directory
mkdir -p "$base_dir"

# Create sub-directories with README.md
for dir in "${sub_dirs[@]}"; do
    mkdir -p "$base_dir/$dir"
    readme="$base_dir/$dir/README.md"
    if [ ! -f "$readme" ]; then
        echo "# 📄 README for $dir folder" > "$readme"
        echo "This folder is part of the starter kit." >> "$readme"
    fi
    echo "✅ Created: $base_dir/$dir (with README.md)"
done

# Final README at project root
root_readme="$base_dir/README.md"
if [ ! -f "$root_readme" ]; then
    echo "# 🚀 Project Starter Kit" > "$root_readme"
    echo "This is the root README for your new project." >> "$root_readme"
fi

echo "🎉 Starter Kit Ready!"

🔹 Make it executable:

chmod +x starter_kit.sh


---

📘 LAB_extra.md

# 🌟 LAB EXTRA – Starter Kit & Automation

---

## 🎯 Purpose
This script **automates the setup of a new project environment**.  
Instead of manually creating folders & READMEs, just run it once and your project structure is ready in seconds!  

---

## 🛠 Script Behavior
- Creates a folder: **project/**  
- Inside it, generates three sub-folders:  
  - `scripts/` 🖥️ (for shell, python, or other automation scripts)  
  - `docs/` 📚 (for project documentation)  
  - `data/` 📂 (for datasets, input, or config files)  
- Adds a **README.md** file in each folder.  
- Adds a root `README.md` at the project level.  
- Prints a success message: **"Starter Kit Ready!"**  

---