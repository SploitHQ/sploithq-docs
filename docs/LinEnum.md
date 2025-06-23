# LinEnum – Linux Privilege Escalation Enumeration Script

**LinEnum** is a powerful bash script designed to perform thorough **local privilege escalation enumeration** on Linux systems. It's frequently used by penetration testers and red teamers during post-exploitation to quickly identify misconfigurations, vulnerable software, and exploitable paths to root access.

🔗 [Use the LinEnum Guide on SploitHQ](https://sploithq.com/linenum)

---

## 🔍 What Does LinEnum Do?

- Checks for SUID/GUID binaries
- Searches for world-writable files and misconfigured permissions
- Scans for installed packages, kernel exploits, and running processes
- Enumerates users, groups, passwords, cron jobs, SSH keys, and PATH issues
- Dumps potential escalation vectors in a clear, categorized output

---

## ⚙️ Basic Usage

1. **Upload the script to the target system:**

```bash
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh
chmod +x LinEnum.sh
```

2. **Run the script:**

```bash
./LinEnum.sh -t
```

---

## 🧰 Common Options

| Option   | Description                                                 |
|----------|-------------------------------------------------------------|
| `-t`     | Thorough scans (more detailed checks, slower)               |
| `-r`     | Report mode – output saved to a file                        |
| `-e`     | Execute commands from a user-supplied file                  |
| `-k keyword` | Search for keyword matches (useful with report mode)   |

---

## 🧪 Example Commands

### Thorough scan with verbose output:
```bash
./LinEnum.sh -t
```

### Save results to a file:
```bash
./LinEnum.sh -r report.txt
```

### Run extra commands from a file:
```bash
./LinEnum.sh -e commands.txt
```

### Search for “password” in output:
```bash
./LinEnum.sh -r report.txt -k password
```

---

## 📄 Sample Findings LinEnum May Reveal

- Misconfigured sudoers entries (e.g., `ALL=(ALL) NOPASSWD`)
- Writable cron jobs or scripts
- SUID binaries like `/usr/bin/nmap` or `/usr/bin/vim`
- World-writable files owned by root
- Exposed private SSH keys or credentials in config files

---

## 🌐 SploitHQ LinEnum Resources

👉 [Run LinEnum with Tips and Examples](https://sploithq.com/linenum)

- Upload & execute guide
- Common post-exploitation paths
- Chaining LinEnum with GTFOBins

---

## 🔗 Useful Links

- [LinEnum GitHub Repository](https://github.com/rebootuser/LinEnum)
- [GTFOBins](https://gtfobins.github.io/)
- [SploitHQ LinEnum Page](https://sploithq.com/linenum)

---

## 📄 License

LinEnum is an open-source script created by rebootuser and distributed under the MIT license.  
This write-up is maintained by [SploitHQ](https://sploithq.com) for ethical hacking and educational use.
