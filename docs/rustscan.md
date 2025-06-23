# RustScan

**RustScan** is a modern, ultra-fast port scanner built in Rust. It’s designed to be significantly faster than traditional scanners like Nmap by quickly identifying open ports and optionally handing them off to Nmap or another tool for deeper analysis.

🔗 [Use the RustScan Command Generator on SploitHQ](https://sploithq.com/rustscan)

---

## 🔍 What can RustScan do?

- Scan thousands of ports per second with minimal resource usage
- Integrate seamlessly with Nmap for full-service detection
- Support custom IP ranges, port ranges, and output formats
- Useful for rapid port discovery during enumeration

---

## ⚙️ Basic Usage

```bash
rustscan -a 192.168.1.1
```

This scans the default top 1000 ports on the host `192.168.1.1`.

---

## 🧰 Commonly Used Options

| Option                  | Description                                                       |
|--------------------------|-------------------------------------------------------------------|
| `-a <address>`           | Target IP or hostname                                             |
| `-p <ports>`             | Port(s) to scan (e.g. `-p 22,80,443` or `-p 1-65535`)             |
| `--ulimit <n>`           | Set file descriptor limit (e.g. `--ulimit 5000`)                 |
| `--range <IP range>`     | IP/CIDR block (e.g. `10.0.0.0/24`)                                |
| `--nmap`                 | Pipe open ports into Nmap for service/version detection          |
| `-b <batch>`             | Set batch size (threads) for scanning                            |
| `-g`, `--greppable`      | Output in grepable format                                         |
| `-o <file>`              | Output results to file                                            |
| `-t <timeout>`           | Timeout per port (e.g. `-t 1500` for 1.5 seconds)                |

---

## 🧪 Examples

### Fast scan of a single host
```bash
rustscan -a 192.168.0.5
```

### Scan full port range on a host
```bash
rustscan -a 192.168.0.5 -p 1-65535
```

### Increase performance with higher ulimit
```bash
rustscan -a 10.0.0.1 --ulimit 5000
```

### Pipe open ports into Nmap
```bash
rustscan -a 10.10.10.10 --ulimit 5000 -- -sV -O
```

### Scan an entire subnet
```bash
rustscan --range 192.168.1.0/24 -p 22,80,443
```

---

## ⚠️ Notes

- You may need to raise your open file descriptor limit with `--ulimit` on Linux/macOS.
- RustScan is optimized for speed, not stealth — it can be noisy on networks.
- You can pipe results into any command, not just Nmap.

---

## 🌐 Live Command Generator

Want to build fast, flexible port scans?

👉 [Use the RustScan Command Generator on SploitHQ](https://sploithq.com/rustscan)

- Select target(s), ports, and scanning method
- Enable Nmap integration
- Copy the full command instantly

---

## 🔗 Useful Links

- [RustScan GitHub Repository](https://github.com/RustScan/RustScan)
- [RustScan Official Site](https://www.rustscan.com/)
- [SploitHQ RustScan Tool](https://sploithq.com/rustscan)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the RustScan developers.

RustScan is open-source software distributed under the [GNU GPL v3.0](https://www.gnu.org/licenses/gpl-3.0.html).
