# netstat

`netstat` (network statistics) is a command-line tool used for displaying network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. It's an essential tool for diagnosing networking issues and inspecting open ports, listening services, and active connections.

🔗 [Use the netstat Command Generator on SploitHQ](https://sploithq.com/netstat)

---

## 🔍 What can netstat do?

- Display active TCP and UDP connections
- Show listening ports and associated processes
- Reveal interface statistics and routing tables
- Identify which applications are using network sockets
- Monitor real-time network behavior for troubleshooting

---

## ⚙️ Basic Usage

```
netstat
```

By default, this shows a list of active sockets.

---

## 🧰 Commonly Used Options

| Option         | Description                                                       |
|----------------|-------------------------------------------------------------------|
| `-a`           | Show all connections and listening ports                          |
| `-t`           | Show TCP connections only                                         |
| `-u`           | Show UDP connections only                                         |
| `-l`           | Show only listening ports                                         |
| `-n`           | Show numerical addresses instead of resolving hostnames           |
| `-p`           | Show the PID/program name of each connection (requires root)      |
| `-r`           | Show the routing table                                            |
| `-i`           | Show interface statistics                                         |
| `-s`           | Show summary statistics by protocol                               |

---

## 🧪 Examples

### Show all connections and listening ports
```
netstat -a
```

### Show all TCP connections
```
netstat -at
```

### Show only listening UDP ports with numeric addresses
```
netstat -lun
```

### Show connections and their owning processes
```
sudo netstat -tulpn
```

### Display the routing table
```
netstat -r
```

### Show interface statistics
```
netstat -i
```

---

## 🌐 Live netstat Command Generator

Want to build a `netstat` command quickly?

👉 [Try the netstat Command Generator on SploitHQ](https://sploithq.com/netstat)

- Select protocols, show processes, listen-only, and more
- Generate and copy valid `netstat` commands instantly
- Great for sysadmins, security auditors, and network troubleshooters

---

## 🔗 Useful Links

- [netstat man page (die.net)](https://linux.die.net/man/8/netstat)
- [netstat Generator on SploitHQ](https://sploithq.com/netstat)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the original `netstat` authors.

`netstat` is typically distributed as part of the `net-tools` package, which is open-source and GPL-licensed.
