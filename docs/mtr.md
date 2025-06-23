# mtr (My Traceroute)

`mtr` is a network diagnostic tool that combines the functionality of `traceroute` and `ping` into a single command-line utility. It provides real-time information about the path packets take to a destination and how each hop performs, making it ideal for identifying latency or packet loss issues.

🔗 [Use the mtr Command Generator on SploitHQ](https://sploithq.com/mtr)

---

## 🔍 What can mtr do?

- Trace the route from your system to a remote host
- Continuously ping each hop in the route and measure response times
- Display packet loss and latency for each hop
- Help diagnose slow network connections or identify weak points in a route
- Output data in real-time or as a report

---

## ⚙️ Basic Usage

```
mtr example.com
```

This starts an interactive traceroute to `example.com` showing real-time hop and latency info.

---

## 🧰 Commonly Used Options

| Option             | Description                                                        |
|--------------------|--------------------------------------------------------------------|
| `-r`               | Report mode (non-interactive output, ideal for scripts/logs)       |
| `-c <count>`       | Number of pings per hop                                            |
| `-n`               | Do not resolve hostnames (IP addresses only)                       |
| `-b`               | Show both IP addresses and hostnames                               |
| `-w`               | Wide output format                                                 |
| `-z`               | Use report mode with dynamic display                               |
| `-o <fields>`      | Customize report fields (e.g., `LSDR NBA`)                         |
| `--tcp`            | Use TCP packets instead of ICMP                                    |
| `--udp`            | Use UDP packets instead of ICMP                                    |
| `-i <interval>`    | Set time interval between pings (default: 1 second)                |
| `-a <interface>`   | Bind to a specific network interface                               |

---

## 🧪 Examples

### Run mtr in interactive mode
```
mtr example.com
```

### Run in report mode for 10 cycles
```
mtr -r -c 10 example.com
```

### Show IPs only (no DNS lookups)
```
mtr -n example.com
```

### Show both hostnames and IPs
```
mtr -b example.com
```

### Use TCP packets instead of ICMP
```
mtr --tcp example.com
```

---

## 🌐 Live mtr Command Generator

Need to craft an `mtr` command quickly?

👉 [Try the mtr Command Generator on SploitHQ](https://sploithq.com/mtr)

- Choose hostname, report mode, IP-only, protocol type, and more
- Instantly generate a ready-to-run command
- Built for sysadmins, red teamers, and support engineers

---

## 🔗 Useful Links

- [mtr GitHub Repository](https://github.com/traviscross/mtr)
- [mtr man page (die.net)](https://linux.die.net/man/8/mtr)
- [mtr Generator on SploitHQ](https://sploithq.com/mtr)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the mtr project.

`mtr` is open-source and distributed under the [GPL-2.0 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
