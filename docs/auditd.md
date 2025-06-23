# auditd – Linux Audit Daemon for Configuration Monitoring

**auditd** is the user-space component of the Linux Auditing System. It logs system events based on rules defined by the administrator and is used to monitor configuration files, binaries, and sensitive actions in real time for security and compliance.

🔗 [Use the auditd Tool on SploitHQ](https://sploithq.com/configuration-checking)

---

## 🔍 What Can auditd Do?

- Log changes to configuration files and binaries
- Monitor access to sensitive directories or commands
- Track user actions (e.g., sudo, su, passwd)
- Detect unauthorized file modifications or deletions
- Support compliance frameworks (e.g., PCI-DSS, HIPAA)

---

## ⚙️ Basic Components

| Component      | Purpose                                                 |
|----------------|---------------------------------------------------------|
| `auditd`       | The audit daemon that runs in the background            |
| `auditctl`     | Command-line tool to set audit rules dynamically        |
| `ausearch`     | Search audit logs based on criteria                     |
| `aureport`     | Generate summary reports from audit logs                |
| `/etc/audit/audit.rules` | Persistent rule file loaded at boot            |

---

## 🧰 Common auditctl Commands

### Watch a file for changes
```bash
auditctl -w /etc/passwd -p wa -k passwd-watch
```

### Watch a directory recursively
```bash
auditctl -w /etc/ssh/ -p war -k ssh-config
```

### Monitor execution of a sensitive binary
```bash
auditctl -a always,exit -F path=/usr/bin/sudo -F perm=x -k sudo-monitor
```

### List active audit rules
```bash
auditctl -l
```

---

## 🧪 Example Use Cases

### Track Changes to SSH Config
```bash
auditctl -w /etc/ssh/sshd_config -p wa -k ssh-watch
```

### Log All Uses of the passwd Command
```bash
auditctl -a always,exit -F path=/usr/bin/passwd -F perm=x -k passwd-usage
```

### Search for Events Tagged with a Key
```bash
ausearch -k ssh-watch
```

### Generate a Summary Report
```bash
aureport -x --summary
```

---

## ⚠️ Notes

- Audit rules set with `auditctl` are not persistent; use `/etc/audit/rules.d/*.rules` or `/etc/audit/audit.rules` for boot-time configuration.
- Ensure `auditd` is running: `systemctl status auditd`
- Logs are stored in `/var/log/audit/audit.log`

---

## 🌐 Configuration Checker on SploitHQ

Easily generate and apply audit rules using a web-based wizard:

👉 [Try the Configuration Checker](https://sploithq.com/configuration-checking)

- Monitor files and folders for tampering
- Auto-generate `auditctl` or `rules.d` syntax
- Download ready-to-use rule files

---

## 🔗 Useful Links

- [auditd Man Page (die.net)](https://linux.die.net/man/8/auditd)
- [auditctl Man Page (die.net)](https://linux.die.net/man/8/auditctl)
- [ausearch Man Page (die.net)](https://linux.die.net/man/8/ausearch)
- [Red Hat Audit Guide](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/sec-configuring_auditing)

---

## 📄 License

The Linux Auditing System is open-source and included with most major distributions. This page is maintained by [SploitHQ](https://sploithq.com) for security, compliance, and hardening use cases.
