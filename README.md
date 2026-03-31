Open Source Audit Project

Name: Naina Yadav
Roll Number: 24BCE10400
Software Selected: Git


Project Overview

This project dives into the core ideas, licensing principles, and real-world usage of open-source software, taking Git as the primary example. Alongside the theoretical exploration, it also features five shell scripts that demonstrate practical Linux command-line skills.


Scripts Description-

Script 1 — System Identity Report

Generates a summary of system information such as operating system details, kernel version, current user, system uptime, and license-related data.

Script 2 — FOSS Package Inspector

Verifies whether Git is installed on the system, displays its version, and provides a brief description.

Script 3 — Disk and Permission Auditor

Examines selected system directories and reports their size, access permissions, and ownership details.

Script 4 — Log File Analyzer

Processes a given log file, counts how many times a specific keyword (e.g., "error") appears, and displays the relevant matching entries.

Script 5 — Open Source Manifesto Generator

Accepts user input to create a customized statement reflecting open-source philosophy.


How to Run Scripts-

Launch the terminal in a Linux environment (WSL recommended)
Move to the project directory:
cd ~/oss-audit
Grant execution permissions:
chmod +x *.sh

Execute the scripts as needed:

./script1.sh  
./script2.sh  
./script3.sh  
./script4.sh /var/log/syslog  
./script5.sh  

Requirements-
Linux environment (WSL or Ubuntu)
Basic understanding of shell commands


Note-
All scripts have been tested on Ubuntu via WSL and function as expected.
