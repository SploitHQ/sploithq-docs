# Nmap (Network Mapper)

**Nmap** is a powerful, open-source network scanning and enumeration tool. It is widely used by system administrators and penetration testers to discover hosts, detect open ports, identify services, operating systems, and potential vulnerabilities.

🔗 [Use the Nmap Command Generator on SploitHQ](https://sploithq.com/nmap)

---

## 🔍 What can Nmap do?

- Scan for live hosts and open ports
- Detect service versions and operating systems
- Identify firewall rules, filters, and packet behavior
- Run NSE (Nmap Scripting Engine) for vulnerability scanning
- Perform stealth, aggressive, or custom scans
- Export results in multiple formats (text, XML, grepable)

---

## ⚙️ Basic Usage

```bash
nmap 192.168.1.1
```

Scans the host at 192.168.1.1 using default settings.

---

## 🧰 Commonly Used Options

| Option              | Description                                                        |
|---------------------|--------------------------------------------------------------------|
| `-sS`               | TCP SYN (stealth) scan                                             |
| `-sT`               | TCP connect scan                                                   |
| `-sU`               | UDP scan                                                           |
| `-sV`               | Probe open ports to determine service/version                      |
| `-O`                | OS detection                                                       |
| `-Pn`               | Skip host discovery ("ping")                                       |
| `-p <ports>`        | Specify ports (e.g. `-p 22,80,443` or `-p-` for all)               |
| `-T<0-5>`           | Timing template (`T4` is fast, `T0` is slow)                       |
| `-A`                | Aggressive scan (OS, version, scripts, traceroute)                 |
| `-v`, `-vv`         | Verbose output                                                     |
| `-oN`, `-oX`, `-oG` | Output to Normal, XML, or Grepable format                          |
| `--script <name>`   | Run specific NSE scripts                                           |
| `--top-ports <n>`   | Scan top `n` commonly used ports                                   |

---

## 🧪 Examples

### Quick scan of a subnet
```bash
nmap -sn 192.168.1.0/24
```

### Full TCP scan with service and OS detection
```bash
sudo nmap -sS -sV -O -p- 10.0.0.1
```

### Scan multiple targets
```bash
nmap 192.168.1.1 192.168.1.2 example.com
```

### Run vulnerability scripts (NSE)
```bash
nmap --script vuln 192.168.0.5
```

### Output scan results to XML
```bash
nmap -oX results.xml 192.168.1.0/24
```

### Fast scan of top 1000 ports with custom rate
```bash
nmap -T4 --top-ports 1000 10.10.10.0/24
```

---

## ⚠️ Notes

- Running some scans (like `-sS`, `-O`, or `--script`) requires root privileges.
- Using aggressive scans or NSE scripts can trigger IDS/IPS systems.
- Scanning external or third-party networks without permission is illegal in many jurisdictions.

---

## 🌐 Live Command Generator

Build your ideal Nmap command without memorizing flags.

👉 [Use the Nmap Command Generator on SploitHQ](https://sploithq.com/nmap)

- Choose scan type, ports, detection, output format, and more
- Generate and copy your Nmap command instantly

---

## 🔗 Useful Links

- [Nmap Official Site](https://nmap.org/)
- [Nmap GitHub Repository](https://github.com/nmap/nmap)
- [Nmap Man Page (die.net)](https://linux.die.net/man/1/nmap)
- [SploitHQ Nmap Tool](https://sploithq.com/nmap)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the Nmap project.

Nmap is open-source software distributed under the [GNU GPLv2](https://nmap.org/book/man-legal.html).
