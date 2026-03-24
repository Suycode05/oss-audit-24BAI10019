# Open Source Software Lab - Assignment

**Student Name:** Suyash Tripathi  
**Roll Number:** 24BAI10019  
**Chosen Software:** Python

---

## Project Overview

This repository contains 5 Bash scripts developed as part of the Open Source Software Lab. Each script demonstrates core Linux shell scripting concepts while focusing on **Python** — one of the most popular and powerful open-source programming languages.

---

## Scripts Description

### 1. Script 1 — Linux System Welcome Screen
Displays a beautiful welcome screen with system information including distribution name, kernel version, current user, home directory, uptime, date & time, and a message about the open-source license.

**Concepts used:** Variables, command substitution, echo formatting

---

### 2. Script 2 — FOSS Package Inspector
Checks whether Python is installed on the system, displays its version and package information, and prints a short open-source philosophy note using a `case` statement.

**Concepts used:** if-then-else, case statement, `dpkg`/`rpm`, pipe with `grep`

---

### 3. Script 3 — Disk and Permission Auditor
Audits important system directories for disk usage and permissions using a `for` loop. Also specifically checks Python's installation directory.

**Concepts used:** for loop, `du`, `ls -ld`, `awk`, `cut`

---

### 4. Script 4 — Log File Analyzer
Analyzes a log file line by line, counts occurrences of a given keyword (default: "error"), and displays the last 5 matching lines.

**Concepts used:** while-read loop, if-then, counters, command-line arguments (`$1`, `$2`)

---

### 5. Script 5 — Open Source Manifesto Generator
Interactively asks the user 4 questions and generates a personalized Open Source Manifesto, then saves it as a `.txt` file.

**Concepts used:** `read` command, string concatenation, file redirection (`>`), `date` command

---

## Dependencies

- **Operating System:** Any Linux distribution (Ubuntu, Fedora, Debian, etc.)
- **Shell:** Bash (default on most Linux systems)
- No additional packages required. All commands used (`du`, `ls`, `grep`, `dpkg`, `rpm`, etc.) are available by default on standard Linux installations.

---

## How to Run the Scripts

### Step-by-Step Instructions

1. **Clone or Download** this folder to your Linux system.

2. **Open Terminal** and navigate to the directory containing the scripts:
   ```bash
   cd /path/to/your/scripts-folder

Make all scripts executable (run once):
chmod +x *.sh

Running Each Script
Script 1: Linux System Welcome Screen
./welcome.sh

Script 2: FOSS Package Inspector (Python)
./package-inspector.sh

Script 3: Disk and Permission Auditor
./disk-auditor.sh

Script 4: Log File Analyzer
# Basic usage (searches for "error")
./log_analyzer.sh /var/log/syslog

# Search for specific keyword
./log_analyzer.sh /var/log/syslog python

Script 5: Open Source Manifesto Generator
./manifesto-generator.sh

File Names (Recommended)

welcome.sh → Script 1
package-inspector.sh → Script 2
disk-auditor.sh → Script 3
log_analyzer.sh → Script 4
manifesto-generator.sh → Script 5


Note:
Make sure you are running these scripts on a Linux system (or WSL on Windows). Some scripts may not work correctly on macOS or other Unix-like systems due to package manager differences.

Made for Open Source Software Project
Suyash Tripathi