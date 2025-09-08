📘 Final Creative LAB3.md

# 🚀 LAB3 – Modify the Existing Script  

---

## 📄 Original Script: `print_numbers.sh`
### 🔹 Purpose
- Prints numbers from **1 to 10**, one per line.  

### 🔹 Behavior

Output → 1 2 3 4 5 6 7 8 9 10

### ⚠ Limitations
- Range is **fixed** (1–10).  
- No **user input** (always same output).  
- No **error handling**.  

---

## 🔧 Enhanced Script: `enhanced_numbers.sh`

### ✨ New Features
1. 📝 User provides **start, end, and step values**.  
2. 🔒 Validation:  
   - Step must be **positive**.  
   - Inputs must be **integers**.  
3. 🎯 Dynamic → works with any valid range.  
4. 💡 Friendly error messages.  

### 🖥 Script Code
```bash
#!/bin/bash
# enhanced_numbers.sh - Prints numbers from start to end with a step value

read -p "Enter start value: " start
read -p "Enter end value: " end
read -p "Enter step value: " step

if ! [[ "$start" =~ ^-?[0-9]+$ && "$end" =~ ^-?[0-9]+$ && "$step" =~ ^[0-9]+$ ]]; then
    echo "❌ Error: All inputs must be integers, and step must be positive."
    exit 1
fi

if [ "$step" -le 0 ]; then
    echo "❌ Error: Step must be greater than 0."
    exit 1
fi

echo "✅ Printing numbers from $start to $end with step $step:"
for ((i=start; i<=end; i+=step))
do
    echo "$i"
done


---

🎬 Example Runs

▶ Example 1: Normal Case

$ ./enhanced_numbers.sh
Enter start value: 1
Enter end value: 10
Enter step value: 2
✅ Printing numbers from 1 to 10 with step 2:
1
3
5
7
9


---

▶ Example 2: Different Range

$ ./enhanced_numbers.sh
Enter start value: 5
Enter end value: 20
Enter step value: 5
✅ Printing numbers from 5 to 20 with step 5:
5
10
15
20


---

▶ Example 3: Invalid Step

$ ./enhanced_numbers.sh
Enter start value: 1
Enter end value: 10
Enter step value: -3
❌ Error: Step must be greater than 0.


---
