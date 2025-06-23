# masscan

**masscan** is a high-performance TCP port scanner, capable of scanning the entire Internet in seconds. It’s similar to Nmap but optimized for speed, using its own asynchronous network stack.

🔗 [Use the masscan Command Generator on SploitHQ](https://sploithq.com/masscan)

---

## 🔍 What can masscan do?

- Scan thousands of IPs per second
- Identify open TCP ports quickly and efficiently
- Customize scan rate, output format, ports, and IP ranges
- Export results for Nmap or other tools
- Useful for reconnaissance, network mapping, and red teaming

---

## ⚙️ Basic Usage

```bash
sudo masscan -p80 192.168.1.0/24
```

This scans port 80 across the 192.168.1.0/24 network.

---

## 🧰 Common Options

| Option                   | Description                                                    |
|--------------------------|----------------------------------------------------------------|
| `-p <ports>`             | Ports to scan (e.g. `80`, `0-65535`, `22,80,443`)              |
| `<target>`               | IP/CIDR targets (e.g. `192.168.1.0/24`, `example.com`)         |
| `--rate <pps>`           | Packets per second (speed of scan)                            |
| `--interface <iface>`    | Network interface to use                                       |
| `--router-mac <MAC>`     | MAC address of gateway (needed for local scans)               |
| `-oX <file>`             | Output results as XML                                          |
| `-oG <file>`             | Output in grepable format                                      |
| `-oJ <file>`             | Output in JSON format                                          |
| `--banners`              | Attempt to grab service banners                               |
| `--exclude <iplist>`     | IPs or ranges to skip                                          |
| `--exclude-file <file>`  | File of IPs/ranges to exclude                                  |

---

## 🧪 Examples

### Scan a network for open HTTP ports
```bash
sudo masscan -p80 192.168.0.0/24 --rate=1000
```

### Scan all ports on a single host
```bash
sudo masscan -p0-65535 10.0.0.1 --rate=500
```

### Output results to XML
```bash
sudo masscan -p22,80 192.168.1.0/24 -oX scan.xml
```

### Exclude specific IPs or ranges
```bash
sudo masscan -p443 0.0.0.0/0 --exclude 127.0.0.1,192.168.1.0/24
```

### Banner grabbing (limited support)
```bash
sudo masscan -p80 10.10.10.0/24 --banners
```

---

## ⚠️ Notes

- **masscan must be run as root** to send raw packets.
- Setting `--rate` too high on a LAN may trigger IDS/IPS or flood networks.
- It uses its own network stack; you may need to configure `--interface` and `--router-mac` manually.
- Output is compatible with tools like `nmap` or `msfconsole`.

---

## 🌐 Live Command Generator

Want to build a custom `masscan` command?

👉 [Use the masscan Command Generator on SploitHQ](https://sploithq.com/masscan)

- Set target IPs, ports, output options, rate, and exclusions
- Live preview of your command
- One-click copy to clipboard

---

## 🔗 Useful Links

- [masscan GitHub Repository](https://github.com/robertdavidgraham/masscan)
- [masscan Man Page (die.net)](https://linux.die.net/man/1/masscan)
- [SploitHQ Tool: masscan](https://sploithq.com/masscan)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the original author.

masscan is open-source software licensed under the [MIT License](https://opensource.org/licenses/MIT).
