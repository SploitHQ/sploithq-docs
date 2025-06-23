# traceroute

**traceroute** is a network diagnostic tool used to trace the path packets take from your system to a destination host. It helps identify routing issues, latency hops, and points of failure in a network.

🔗 [Use the traceroute Command Generator on SploitHQ](https://sploithq.com/traceroute)

---

## 🔍 What can traceroute do?

- Show each hop between your machine and a remote host
- Identify latency at each network hop
- Diagnose slow or failing connections
- Display IP addresses and hostnames of routers along the path
- Help detect firewall filtering or blackhole routes

---

## ⚙️ Basic Usage

### Trace the route to a host
```
traceroute example.com
```

This sends UDP packets (by default) and shows the path to `example.com`.

---

## 🧰 Commonly Used Options

| Option              | Description                                                       |
|---------------------|-------------------------------------------------------------------|
| `-n`                | Do not resolve IPs to hostnames                                   |
| `-m <max_ttl>`      | Set the maximum number of hops (TTL, default: 30)                 |
| `-w <timeout>`      | Wait time for a reply in seconds (default: 5)                     |
| `-q <nprobes>`      | Number of probes per hop (default: 3)                             |
| `-f <first_ttl>`    | Set the starting TTL (default: 1)                                 |
| `-p <port>`         | Use a specific destination port (for UDP or TCP variants)         |
| `-I`                | Use ICMP echo instead of UDP (like `ping`)                        |
| `-T`                | Use TCP SYN packets (useful for firewall evasion)                 |

> Note: Options may vary slightly depending on your OS (Linux, macOS, BSD).

---

## 🧪 Examples

### Basic trace
```
traceroute google.com
```

### Skip hostname resolution
```
traceroute -n google.com
```

### Use ICMP instead of UDP
```
traceroute -I google.com
```

### Trace with TCP SYN packets
```
traceroute -T google.com
```

### Limit to 10 hops
```
traceroute -m 10 example.com
```

---

## 🌐 Live Command Generator

Want to build traceroute commands for different protocols and options?

👉 [Use the traceroute Command Generator on SploitHQ](https://sploithq.com/traceroute)

- Choose ICMP, UDP, or TCP modes
- Customize TTL, timeout, and probes
- Instantly copy a working command

---

## 🔗 Useful Links

- [traceroute GitHub (modern implementation)](https://github.com/aabc/traceroute)
- [traceroute Man Page (die.net)](https://linux.die.net/man/8/traceroute)
- [Traceroute Generator on SploitHQ](https://sploithq.com/traceroute)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the original traceroute authors.

traceroute is open-source and generally distributed under the [BSD License](https://opensource.org/licenses/BSD-3-Clause).
