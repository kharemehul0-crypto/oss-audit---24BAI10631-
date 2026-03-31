oss-audit-[24BAI10631]
Open Source Software Audit: VLC Media Player

Student: Mehul khare

Roll Number: 24BAI10631

Course: Open Source Software (OSS)  

Project Overview
This repository serves as the practical documentation for my Open Source Software Audit project. For this assignment, I chose to audit **VLC Media Player**, a cornerstone of the FOSS community. The project explores the software's history (originating at École Centrale Paris), its licensing under the GNU GPL v2, and its technical footprint on a Linux system.

The goal was to move beyond just using the software and actually understand the "Four Freedoms" that govern its development and distribution.

System Environment
To conduct this audit, I utilized the following environment:
* Operating System: Ubuntu 24.04 LTS (running via WSL2)
* Shell: GNU bash, version 5.2.21
* Audited Version: VLC media player 3.0.20 (Vetinari)

Shell Script Portfolio
I developed five specific Bash scripts to automate the auditing process. Each script addresses a different unit of the OSS syllabus:

1. script1.sh (System Identity): Automatically fetches the Linux kernel version and OS release to verify the audit environment.
2. script2.sh (Package Inspector): Checks if VLC is correctly installed via the `apt` package manager and locates its binary path.
3. script3.sh (Permission Auditor): Scans critical system directories to report on file permissions and disk usage.
4. script4.sh (Log Analyzer): A diagnostic tool that parses system logs for specific keywords like "error" or "warning."
5. script5.sh (OSS Manifesto): An interactive script that captures user reflections on software freedom and generates a formatted manifesto file.



 How to Run the Project  
 1. Clone the Repository  
    git clone https://github.com/kharemehul0-crypto/oss-audit---24BAI10631-.git  
    cd oss-audit---24BAI10631- 

 2. Make Scripts Executable  
    chmod +x *.sh  

 3. Run Scripts  
    ./script1.sh  
    ./script2.sh  
    ./script3.sh  
    ./script4.sh  
    ./script5.sh

    
 Learning Outcomes  
- Understanding Linux system auditing  
- Hands-on experience with Bash scripting  
- Knowledge of package management (APT)  
- Log analysis and file permission handling  
- Deep understanding of Open Source principles  


Open Source Philosophy  
This project highlights the Four Freedoms of Open Source Software:  

1. Freedom to run the program  
2. Freedom to study how the program works  
3. Freedom to modify the program  
4. Freedom to distribute copies  

License  

This project is created for academic purposes as part of the Open Source Software course.  


Acknowledgment  

I would like to thank the open-source community for providing powerful tools like VLC Media Player and Linux, which make learning and innovation accessible to everyone.  
