# Nikto Web Server Scanner

**Nikto** is an open-source web server scanner that performs comprehensive tests against web servers to identify vulnerabilities, outdated software, misconfigurations, and other security issues.

🔗 [Use the Nikto Command Generator on SploitHQ](https://sploithq.com/nikto)

---

## 🔍 What can Nikto do?

- Detect dangerous files and CGI scripts
- Check for outdated server software and security headers
- Identify default credentials and insecure configurations
- Scan specific ports and SSL services
- Perform generic and OS-specific checks

---

## ⚙️ Basic Usage

```bash
nikto -h http://example.com
```

This scans the target web server at `http://example.com` using the default plugin set.

---

## 🧰 Commonly Used Options

| Option             | Description                                                        |
|--------------------|--------------------------------------------------------------------|
| `-h <host>`        | Target host or URL (e.g., `http://192.168.1.100`)                  |
| `-p <port>`        | Specify port (e.g., `-p 8080`)                                      |
| `-ssl`             | Force SSL/TLS scan (e.g., `https://`)                              |
| `-Tuning <options>`| Select test categories (see below)                                 |
| `-o <file>`        | Output results to a file                                           |
| `-Format <type>`   | Output format: txt, xml, html, csv, nbe                            |
| `-Display <opts>`  | Control verbosity of output                                        |
| `-Useragent <str>` | Set custom User-Agent string                                       |
| `-Plugins <list>`  | Specify plugin(s) to use                                           |

---

### 🔧 Tuning Options

Use `-Tuning` followed by characters to filter tests:

| Character | Test Type                        |
|-----------|----------------------------------|
| `0`       | File Upload                      |
| `1`       | Interesting File/Seen in logs    |
| `2`       | Misconfiguration/Default File    |
| `3`       | Information Disclosure           |
| `4`       | Injection (XSS, SQL, Command)    |
| `5`       | Remote File Retrieval            |
| `6`       | Denial of Service                |
| `7`       | Remote File Inclusion            |
| `8`       | Authentication Bypass            |
| `9`       | Software Identification          |
| `a`       | All tests                        |

Example: `-Tuning 0124` runs specific types of tests only.

---

## 🧪 Examples

### Basic HTTP scan
```bash
nikto -h http://192.168.0.10
```

### Scan a web server using SSL
```bash
nikto -h https://example.com
```

### Use a custom port
```bash
nikto -h http://192.168.0.10 -p 8080
```

### Run specific types of tests
```bash
nikto -h http://target -Tuning 1239
```

### Save output in HTML format
```bash
nikto -h http://target -o scan.html -Format html
```

### Use a custom User-Agent
```bash
nikto -h http://target --useragent "Mozilla/5.0 SploitHQ Scanner"
```

---

## ⚠️ Notes

- Nikto is noisy — it will trigger IDS/IPS systems.
- It does not try to exploit vulnerabilities; it's purely informational.
- Useful in initial enumeration of web applications and servers.

---

## 🌐 Live Command Generator

Build custom Nikto scans without memorizing flags.

👉 [Use the Nikto Command Generator on SploitHQ](https://sploithq.com/nikto)

- Choose test categories, output format, ports, and plugins
- Generate the full `nikto` command on the fly
- One-click copy to clipboard

---

## 🔗 Useful Links

- [Nikto GitHub Repository](https://github.com/sullo/nikto)
- [Nikto Official Documentation](https://cirt.net/Nikto2)
- [nikto Man Page (die.net)](https://linux.die.net/man/1/nikto)
- [SploitHQ Nikto Tool](https://sploithq.com/nikto)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the original Nikto developers.

Nikto is open-source and distributed under the [GPL License](https://www.gnu.org/licenses/gpl-2.0.html).
