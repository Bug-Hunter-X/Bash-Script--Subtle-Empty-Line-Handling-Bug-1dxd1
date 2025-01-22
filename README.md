# Bash Script: Empty Line Handling Bug

This repository demonstrates a common yet subtle bug in bash scripting related to how empty lines are handled in file processing. The script `bug.sh` contains the buggy code, while `bugSolution.sh` provides a corrected version.

**Bug Description:**
The original script (`bug.sh`) uses a `while` loop with `read` to process each line of a file. However, its handling of empty lines is unreliable, particularly when using different input files with varying whitespace.   This results in unexpected or skipped lines. 

**Solution:**
The corrected script (`bugSolution.sh`) addresses this by robustly handling empty lines and ensures that the IFS variable is properly set to only spaces. This improves the reliability and consistency of the script's output across different file types.

**How to Reproduce the Bug:**
1. Create a file named `data.txt` with some lines, including empty lines and lines with only spaces.
2. Run `bug.sh`. Observe the unexpected behavior.
3. Run `bugSolution.sh`. Observe the corrected output.