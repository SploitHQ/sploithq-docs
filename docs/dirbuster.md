# DirBuster – Web Directory and File Brute-Forcing Tool

**DirBuster** is a multi-threaded web application directory and file brute-forcer developed by OWASP. It’s used to discover hidden or unlinked directories, admin panels, backup files, and other sensitive content on web servers.

🔗 [Use the DirBuster Tool on SploitHQ](https://sploithq.com/web-app-vulnerability-scans)

---

## 🔍 What Can DirBuster Do?

- Brute-force directories and files on web servers
- Discover sensitive resources not linked in the UI
- Test with multiple wordlists and extensions
- Support recursive scanning of discovered directories
- Bypass basic 403/404 error obfuscation
- Generate HTML, XML, and CSV reports

---

## ⚙️ Basic Usage

DirBuster is a graphical Java application, usually launched via:

```bash
java -jar DirBuster-*.jar
```

Alternatively, you may find it pre-installed in Kali Linux and available via the GUI.

---

## 🧰 Key Options and Settings

| Setting                  | Description                                                        |
|--------------------------|--------------------------------------------------------------------|
| **Target URL**           | The base domain or IP to scan (e.g., `http://example.com/`)        |
| **Start point**          | Where to begin scanning (usually `/`)                              |
| **Wordlist**             | File or directory list (e.g., `directory-list-2.3-medium.txt`)      |
| **File extension list**  | Add `.php`, `.html`, `.bak`, etc.                                  |
| **Threads**              | Number of concurrent threads (default: 10, can be increased)        |
| **Recursive scan**       | Enables scanning found directories recursively                     |
| **Fail case string**     | Response marker to help detect false positives                     |
| **Reports**              | Export findings in HTML, CSV, or XML format                        |

---

## 🧪 Examples

### Launch DirBuster with GUI
```bash
java -jar DirBuster-1.0-RC1.jar
```

### Common Wordlists
- `/usr/share/dirbuster/wordlists/directory-list-2.3-medium.txt`
- [SecLists](https://github.com/danielmiessler/SecLists) wordlists

### Typical File Extensions to Test
- `.php`, `.asp`, `.jsp`, `.html`, `.bak`, `.txt`, `.conf`

---

## ⚠️ Notes

- DirBuster is noisy and can generate high traffic — use only on authorized targets.
- Slower scans are recommended on production or rate-limited servers.
- Useful for finding forgotten admin panels, test endpoints, and backup files.

---

## 🌐 SploitHQ Web Scanner Toolkit

DirBuster is part of the broader category of web app scanning tools:

👉 [Explore More at SploitHQ Web App Vulnerability Scans](https://sploithq.com/web-app-vulnerability-scans)

- Compare with `ffuf`, `gobuster`, and `feroxbuster`
- Generate customized command-line scans
- Learn how brute-force methods differ from fuzzing

---

## 🔗 Useful Links

- [OWASP DirBuster Project](https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project)
- [DirBuster on Kali Linux Docs](https://tools.kali.org/web-applications/dirbuster)
- [SploitHQ Web Scanning Tools](https://sploithq.com/web-app-vulnerability-scans)

---

## 📄 License

DirBuster is maintained by OWASP and released under the GPL.  
This page is curated by [SploitHQ](https://sploithq.com) for educational and professional testing use.
