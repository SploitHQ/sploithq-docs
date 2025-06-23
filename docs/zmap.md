# ZMap

**ZMap** is a high-speed network scanner designed for Internet-wide network surveys. It can scan the entire IPv4 address space in minutes from a single machine. Built for researchers and red teamers, ZMap is optimized for speed and scale — not stealth.

🔗 [Use the ZMap Command Generator on SploitHQ](https://sploithq.com/zmap)

---

## 🔍 What can ZMap do?

- Scan millions of IPs per second for open ports
- Perform stateless, single-packet scans
- Focus on one probe per IP (fast but not stealthy)
- Export to CSV or JSON for analysis
- Useful for Internet-wide research, vulnerability analysis, and threat hunting

---

## ⚙️ Basic Usage

```bash
sudo zmap -p 80 0.0.0.0/0
```

Scans the entire IPv4 space for hosts with port 80 open.

---

## 🧰 Commonly Used Options

| Option                   | Description                                                   |
|---------------------------|---------------------------------------------------------------|
| `-p <port>`              | Port to scan (e.g. `80`, `443`)                               |
| `<target>`               | CIDR or IP range to scan (e.g. `192.168.1.0/24`)              |
| `-r <pps>`               | Scan rate in packets per second                               |
| `-o <file>`              | Output file (default is stdout)                               |
| `-f <fields>`            | Fields to include in output (e.g. `saddr,sport,success`)      |
| `-oX`, `-oJ`, `-oC`      | Output as XML, JSON, or CSV                                   |
| `--whitelist-file`       | File with IPs/ranges to include                               |
| `--blacklist-file`       | File with IPs/ranges to exclude                               |
| `--bandwidth`            | Bandwidth limit (e.g. `10M`, `100M`)                          |
| `--probe-module`         | Scan module to use (`tcp_syn`, `icmp_echoscan`, etc.)         |

---

## 🧪 Examples

### Scan port 443 on a /16 range
```bash
sudo zmap -p 443 192.168.0.0/16
```

### Scan full Internet for SSH (port 22) at 100kpps
```bash
sudo zmap -p 22 0.0.0.0/0 -r 100000
```

### Output to JSON with IP and success status
```bash
sudo zmap -p 80 10.0.0.0/8 -f saddr,success -oJ results.json
```

### Exclude private ranges with a blacklist
```bash
sudo zmap -p 80 0.0.0.0/0 --blacklist-file=/etc/zmap/blacklist.conf
```

---

## ⚠️ Notes

- **ZMap is extremely aggressive** — do not scan targets without permission.
- Run as root to send raw packets.
- For internal scans, limit speed with `-r` or `--bandwidth` to avoid congestion.
- ZMap is best used for **reachability**, not deep fingerprinting.

---

## 🌐 Live Command Generator

Need to quickly generate fast scan commands?

👉 [Use the ZMap Command Generator on SploitHQ](https://sploithq.com/zmap)

- Set port, CIDR, speed, and output format
- Optional blacklists and field filters
- One-click copy and go

---

## 🔗 Useful Links

- [ZMap GitHub Repository](https://github.com/zmap/zmap)
- [ZMap Official Documentation](https://zmap.io/)
- [ZMap Man Page (die.net)](https://linux.die.net/man/1/zmap)
- [SploitHQ ZMap Tool](https://sploithq.com/zmap)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the ZMap team.

ZMap is open-source software licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).
