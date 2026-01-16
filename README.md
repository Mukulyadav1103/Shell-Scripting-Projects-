# Shell-Scripting-Projects-

This repository contains **Linux Shell Scripting projects and automation scripts** that I built while learning Bash scripting.  
These projects focus on **system monitoring, user management, automation, and real-world Linux tasks**.

---

## 📂 Repository Structure
├── projects/
│ ├── ram-monitoring/
│ ├── disk-space-alert/
│ ├── archive-script/
│ └── user-creation/
└── README.md


---

## 🛠️ Projects Description

### 1️⃣ Monitoring Free RAM Space
- Monitors available RAM on the system
- Displays warning when RAM usage crosses a threshold
- Useful for server health monitoring

---

### 2️⃣ Monitoring Free Disk Space & Sending Alert Email
- Checks disk usage automatically
- Sends an **email alert** when disk space is low
- Uses **Google SMTP** for email notifications
- Ideal for production servers

---

### 3️⃣ Archive Files or Folders Using Script
- Archives files/folders using `tar`
- Helps in backups and log management
- Can be scheduled using `cron`

---

### 4️⃣ Creating Local User Using Shell Script
- Automates Linux user creation
- Sets password and basic configuration
- Useful for system administrators

---

## 🚀 How to Run the Scripts

1. Give execute permission:
```bash
chmod +x script_name.sh
Run the script:

bash
Copy code
./script_name.sh
