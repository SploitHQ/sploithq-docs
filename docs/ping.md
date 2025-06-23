# ping, fping, and hping

These three tools are essential in networking and security testing. Each offers different levels of control and capability when sending ICMP or crafted packets to test host availability, latency, and firewall configurations.

🔗 [Use the Ping Tools Generator on SploitHQ](https://sploithq.com/ping)

---

## 🔍 Overview

| Tool     | Description                                                                 |
|----------|-----------------------------------------------------------------------------|
| `ping`   | Basic tool for testing connectivity and measuring latency via ICMP         |
| `fping`  | Multi-host ping tool that can check many hosts at once in a script-friendly format |
| `hping`  | Advanced packet crafter used for firewall testing, TCP scans, and spoofing |

---

## ⚙️ Basic Usage

### ping
```
ping example.com
```

### fping
```
fping -a -g 192.168.1.0/24
```

### hping (TCP SYN scan)
```
hping3 -S -p 80 example.com
```

---

## 🧰 Commonly Used Options

### ping

| Option       | Description                                 |
|--------------|---------------------------------------------|
| `-c <count>` | Number of pings to send                     |
| `-i <time>`  | Interval between packets (in seconds)       |
| `-s <size>`  | Packet size in bytes                        |
| `-t <ttl>`   | Time-to-live (hop limit)                    |
| `-q`         | Quiet output                                |

---

### fping

| Option       | Description                                 |
|--------------|---------------------------------------------|
| `-a`         | Show only alive hosts                       |
| `-g`         | Generate target IPs from a subnet/range     |
| `-f <file>`  | Read target hosts from file                 |
| `-r <count>` | Retry count                                 |
| `-t <ms>`    | Timeout per ping in milliseconds            |

---

### hping3

| Option         | Description                                                      |
|----------------|------------------------------------------------------------------|
| `-S`           | Send TCP SYN packets (like nmap -sS)                             |
| `-A`           | Send TCP ACK packets                                             |
| `-p <port>`    | Target port                                                      |
| `-c <count>`   | Number of packets to send                                        |
| `--flood`      | Send packets as fast as possible (DoS testing)                   |
| `-a <spoofed>` | Spoof source IP address                                          |
| `--icmp`       | Use ICMP instead of TCP                                          |
| `--traceroute` | Enable traceroute mode                                          |

---

## 🧪 Examples

### ping a host 4 times
```
ping -c 4 example.com
```

### fping an entire subnet
```
fping -a -g 10.0.0.0/24
```

### hping TCP connect scan on port 443
```
hping3 -S -p 443 -c 1 example.com
```

### hping with spoofed IP and flood mode
```
hping3 -S -a 1.2.3.4 --flood -p 80 example.com
```

---

## 🌐 Live Ping Command Generator

Need to build a command for `ping`, `fping`, or `hping`?

👉 [Try the Ping Tools Generator on SploitHQ](https://sploithq.com/ping)

- Choose host, count, spoofing, flooding, ports, and more
- Generate custom ICMP or TCP probe commands
- Great for red teaming and network diagnostics

---

## 🔗 Useful Links

- [ping man page (die.net)](https://linux.die.net/man/8/ping)
- [fping GitHub Repository](https://github.com/schweikert/fping)
- [hping GitHub Repository](https://github.com/antirez/hping)
- [Ping Tools Generator on SploitHQ](https://sploithq.com/ping)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the original authors.

- `ping` is included in most Linux distributions.
- `fping` is distributed under the [BSD license](https://github.com/schweikert/fping/blob/master/COPYING).
- `hping` is open-source and GPL-licensed.
