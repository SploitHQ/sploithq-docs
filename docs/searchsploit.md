# searchsploit – Exploit Database Command-Line Search Tool

**searchsploit** is a command-line utility that lets you search the [Exploit Database (Exploit-DB)](https://www.exploit-db.com/) from your terminal. It's part of the **ExploitDB** package and helps pentesters and security researchers quickly find public exploits and shellcodes relevant to software and CVEs.

🔗 [Explore searchsploit Usage on SploitHQ](https://sploithq.com/searchsploit)

---

## 🔍 What Can searchsploit Do?

- Search Exploit-DB offline for local and remote exploits
- Match by software name, version, or CVE number
- View exploit paths and descriptions quickly
- Mirror or copy exploit code to your workspace
- Supports grep-style filters, output formatting, and JSON export

---

## ⚙️ Basic Syntax

```bash
searchsploit [options] <search_term>
```

---

## 🧰 Common Options

| Option                  | Description                                      |
|-------------------------|--------------------------------------------------|
| `-h`                    | Show help and usage                              |
| `-t`                    | Display results in table format (default)        |
| `-p`                    | Show full path to exploit                        |
| `-m <id|path>`          | Mirror (copy) exploit to current directory        |
| `-x <id|path>`          | View the exploit file in `$PAGER` (like less)    |
| `-w`                    | Open Exploit-DB entry in browser                 |
| `--cve <CVE-ID>`        | Search by CVE ID                                 |
| `--json`                | Output results in JSON format                    |

---

## 🧪 Examples

### Search for Apache exploits
```bash
searchsploit apache
```

### Search for OpenSSL 1.0.2 vulnerabilities
```bash
searchsploit openssl 1.0.2
```

### Search by CVE ID
```bash
searchsploit --cve CVE-2021-34527
```

### Mirror an exploit to your working directory
```bash
searchsploit -m exploits/windows/remote/12345.py
```

### View an exploit’s code
```bash
searchsploit -x exploits/linux/local/37292.c
```

---

## 🔄 Keeping Exploit-DB Up to Date

```bash
searchsploit -u
```

This updates the local exploit database index to include the latest entries from Exploit-DB.

---

## 🌐 SploitHQ and searchsploit

👉 [Build Exploit Queries on SploitHQ](https://sploithq.com/searchsploit)

- Search CVEs and software versions
- Copy ready-to-use commands
- Learn how to interpret exploit paths and categories

---

## 🔗 Useful Links

- [Exploit-DB](https://www.exploit-db.com/)
- [searchsploit GitHub Repo](https://github.com/offensive-security/exploitdb)
- [Man Page (Kali Linux Docs)](https://manpages.kali.org/tools/exploitdb/searchsploit.1.html)
- [SploitHQ searchsploit Page](https://sploithq.com/searchsploit)

---

## 📄 License

searchsploit is maintained by Offensive Security and distributed under the GPLv2 license.  
This documentation is maintained by [SploitHQ](https://sploithq.com) for educational and ethical use.
