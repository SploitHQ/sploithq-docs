# linPEAS – Privilege Escalation Awesome Script for Linux

**linPEAS** is part of the PEAS (Privilege Escalation Awesome Scripts) suite. It's a **privilege escalation enumeration script** designed for Linux systems that checks for common misconfigurations, vulnerable software, and paths to root access. It's more comprehensive and modern than older tools like LinEnum.

🔗 [Run linPEAS Privilege Escalation Checks on SploitHQ](https://sploithq.com/linpeas)

---

## 🔍 What Does linPEAS Do?

- Scans for misconfigured sudo/suid/capabilities
- Checks for kernel exploits, outdated software, and PATH hijacks
- Searches for credential leaks in config files
- Detects Docker, LXD, NFS, cron jobs, SSH keys, and scheduled tasks
- Highlights potential privilege escalation vectors with color coding

---

## ⚙️ Basic Usage

1. **Upload the script:**

```bash
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
chmod +x linpeas.sh
```

2. **Run the script:**

```bash
./linpeas.sh
```

> 📝 Tip: Run it inside `tmux` or pipe to a log file to avoid losing scrollback.

---

## 🧰 Useful Options

| Option                     | Description                                         |
|----------------------------|-----------------------------------------------------|
| `./linpeas.sh`             | Default, interactive, color-coded output           |
| `./linpeas.sh -a`          | Run **all** checks (very thorough)                 |
| `./linpeas.sh > output.txt`| Save output for offline review                     |
| `TERM=xterm ./linpeas.sh` | Ensure proper terminal formatting if output breaks |

---

## 🧪 Example Workflow

### Thorough Scan
```bash
./linpeas.sh -a
```

### Save Output to a File
```bash
./linpeas.sh > linpeas-results.txt
```

### Run with Proper Terminal Settings
```bash
TERM=xterm ./linpeas.sh
```

---

## 📄 Sample Finds with linPEAS

- Writable files with root privileges
- Stored plaintext passwords in `/etc`, `.bash_history`, or `.git`
- Misconfigured sudo rules like `NOPASSWD: /usr/bin/vim`
- Running Docker or LXD as a user
- Misused cron jobs and PATH-based exploits

---

## 🌐 SploitHQ linPEAS Integration

👉 [Launch linPEAS Privilege Checks](https://sploithq.com/linpeas)

- Upload, run, and analyze results
- Compare against GTFOBins and known vectors
- Integrate with post-exploitation scripts

---

## 🔗 Useful Links

- [PEAS-ng GitHub (Official)](https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS)
- [GTFOBins – Exploitable Binaries](https://gtfobins.github.io/)
- [SploitHQ linPEAS Page](https://sploithq.com/linpeas)

---

## 📄 License

linPEAS is developed by Carlos Polop as part of the PEAS suite under the MIT License.  
This documentation is maintained by [SploitHQ](https://sploithq.com) for educational and authorized testing use.
