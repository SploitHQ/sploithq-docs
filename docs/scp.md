# SCP – Secure Copy Protocol for Remote Transfers

**SCP** (Secure Copy) is a command-line utility that uses SSH to securely transfer files between a local and a remote host. It’s commonly used by sysadmins, penetration testers, and developers to move scripts, payloads, and data during assessments or deployments.

🔗 [Explore SCP Usage on SploitHQ](https://sploithq.com/scp)

---

## 🔍 What Is SCP?

- Securely copies files or directories over SSH
- Works similarly to `cp`, but for remote systems
- Encrypts both file content and authentication via SSH
- Fast, reliable, and often preinstalled on Unix-like systems

---

## ⚙️ Basic Syntax

```bash
scp [options] <source> <destination>
```

---

## 🧰 Common SCP Use Cases

| Scenario                                | Command Example |
|-----------------------------------------|-----------------|
| Copy local file to remote               | `scp file.txt user@host:/path/` |
| Copy remote file to local               | `scp user@host:/path/file.txt ./` |
| Copy a directory recursively            | `scp -r dir/ user@host:/path/` |
| Use a custom SSH port                   | `scp -P 2222 file.txt user@host:/path/` |
| Use a private key for authentication    | `scp -i ~/.ssh/id_rsa file.txt user@host:/path/` |

---

## 🧪 Examples

### Upload a file to a remote server:
```bash
scp payload.sh root@192.168.1.100:/tmp/
```

### Download a remote config file:
```bash
scp user@server.com:/etc/nginx/nginx.conf ~/backup/
```

### Copy a directory to a remote host:
```bash
scp -r ./project user@host:/opt/web/
```

### Use a non-default SSH port (e.g., 2222):
```bash
scp -P 2222 exploit.py user@host:/home/user/
```

---

## ⚠️ Notes

- `scp` uses SSH and inherits its configuration (e.g., known hosts, identities)
- Use `-C` to enable compression for large file transfers
- On some systems, `scp` is being replaced by `sftp` or `rsync` over SSH for security reasons
- Avoid using `scp` with untrusted endpoints — always verify host keys

---

## 🌐 SploitHQ Remote File Transfer Tools

👉 [Use SCP Examples and Cheatsheets](https://sploithq.com/scp)

- Securely move payloads during pentests
- Automate file transfers in scripts
- Learn how to harden or block SCP access

---

## 🔗 Useful Links

- [SCP Man Page (die.net)](https://linux.die.net/man/1/scp)
- [OpenSSH Project](https://www.openssh.com/)
- [SploitHQ SCP Page](https://sploithq.com/scp)

---

## 📄 License

This guide is maintained by [SploitHQ](https://sploithq.com) and is intended for secure, ethical, and authorized use in penetration testing and system administration.
