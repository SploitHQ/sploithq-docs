# proxytunnel

`proxytunnel` is a lightweight command-line tool that lets you tunnel TCP connections through an HTTPS proxy. It’s commonly used to establish SSH connections through restrictive firewalls or corporate proxies by creating a tunnel over port 443 or 80.

🔗 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

---

## 🔍 What can proxytunnel do?

- Bypass restrictive firewalls by tunneling over HTTP/HTTPS
- Connect to SSH servers behind proxy servers
- Work with HTTP and HTTPS proxy types
- Support basic proxy authentication
- Act as a backend for `ssh` or `telnet` tunneling

---

## ⚙️ Basic Usage

```
proxytunnel -p proxyhost:port -d targethost:port
```

This connects to `targethost:port` via the specified proxy server.

---

## 🧰 Commonly Used Options

| Option               | Description                                                      |
|----------------------|------------------------------------------------------------------|
| `-p <host:port>`     | Proxy server and port                                            |
| `-d <host:port>`     | Destination server and port (e.g., SSH host)                     |
| `-u <username>`      | Username for proxy authentication                                |
| `-s <password>`      | Password for proxy authentication                                |
| `-H <header>`        | Add custom HTTP header                                           |
| `-r`                 | Use relative URL (for misbehaving proxies)                       |
| `-v`                 | Verbose output for debugging                                     |
| `-f`                 | Stay in the foreground                                           |
| `--disable-ssl`      | Use plain HTTP (don’t negotiate SSL/TLS with proxy)              |

---

## 🧪 Examples

### Tunnel an SSH connection through a proxy
```
proxytunnel -p 192.168.1.1:8080 -d ssh.example.com:22
```

### Tunnel SSH with proxy auth
```
proxytunnel -p proxy.example.com:8080 -d ssh.example.com:22 -u user -s pass
```

### Use proxytunnel with OpenSSH
```bash
ssh -o "ProxyCommand proxytunnel -p proxy.example.com:8080 -d %h:%p" user@ssh.example.com
```

### Add custom headers
```
proxytunnel -p proxy:8080 -d target.com:22 -H "X-Custom: Value"
```

---

## 🌐 Live Proxy Command Generator

Need to tunnel traffic through restrictive firewalls?

👉 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

- Build `proxytunnel` commands for SSH access
- Include proxy authentication, custom headers, and ports
- Copy & paste the full command instantly

---

## 🔗 Useful Links

- [proxytunnel GitHub Repository](https://github.com/proxytunnel/proxytunnel)
- [proxytunnel man page (die.net)](https://linux.die.net/man/1/proxytunnel)
- [SploitHQ Proxy Tools](https://sploithq.com/proxy)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the proxytunnel project.

`proxytunnel` is open-source and distributed under the [BSD License](https://opensource.org/licenses/BSD-3-Clause).
