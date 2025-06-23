# tcpdump

**tcpdump** is a powerful command-line packet analyzer. It allows users to capture and inspect network traffic in real time. It's widely used by network administrators, penetration testers, and developers for troubleshooting and packet-level analysis.

🔗 [Use the tcpdump Command Generator on SploitHQ](https://sploithq.com/tcpdump)

---

## 🔍 What can tcpdump do?

- Capture and analyze packets on live network interfaces
- Filter traffic by protocol, IP, port, and more
- Save captured traffic to `.pcap` files for offline analysis
- Inspect TCP handshakes, DNS queries, HTTP headers, etc.
- Integrate with tools like Wireshark for deeper analysis

---

## ⚙️ Basic Usage

### Capture all packets on an interface
```
sudo tcpdump -i eth0
```

This captures all packets on the `eth0` interface.

---

## 🧰 Commonly Used Options

| Option               | Description                                                         |
|----------------------|---------------------------------------------------------------------|
| `-i <interface>`     | Capture traffic on a specific interface (e.g., `eth0`, `wlan0`)     |
| `-n`                 | Don’t resolve hostnames (show IPs)                                  |
| `-nn`                | Don’t resolve hostnames or port names                               |
| `-v`, `-vv`, `-vvv`  | Increase output verbosity                                            |
| `-c <count>`         | Stop after capturing `<count>` packets                              |
| `-w <file>`          | Write output to a `.pcap` file                                      |
| `-r <file>`          | Read packets from a `.pcap` file                                    |
| `'filter'`           | Apply a capture filter (e.g., `tcp`, `port 80`, `host 192.168.1.1`) |

---

## 🧪 Examples

### Capture 100 packets on eth0
```
sudo tcpdump -i eth0 -c 100
```

### Capture only TCP traffic
```
sudo tcpdump -i eth0 tcp
```

### Capture traffic to or from a specific IP
```
sudo tcpdump host 192.168.1.10
```

### Capture only HTTP traffic (port 80)
```
sudo tcpdump tcp port 80
```

### Save capture to a file
```
sudo tcpdump -i eth0 -w capture.pcap
```

### Read and analyze a pcap file
```
tcpdump -r capture.pcap
```

---

## 🌐 Live Command Generator

Want to generate customized tcpdump commands?

👉 [Use the tcpdump Command Generator on SploitHQ](https://sploithq.com/tcpdump)

- Choose interface, filters, packet count, output options, and more
- Instantly get a copy-paste ready command
- Ideal for pentesting, debugging, or system monitoring

---

## 🔗 Useful Links

- [tcpdump Official Site](https://www.tcpdump.org/)
- [tcpdump GitHub Repository](https://github.com/the-tcpdump-group/tcpdump)
- [tcpdump Man Page (die.net)](https://linux.die.net/man/8/tcpdump)
- [tcpdump Generator on SploitHQ](https://sploithq.com/tcpdump)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the tcpdump project.

tcpdump is open-source software distributed under the [BSD License](https://opensource.org/licenses/BSD-3-Clause).
