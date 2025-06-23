# proxychains

`proxychains` is a command-line tool that forces any TCP connection made by a given command to go through one or more proxy servers (SOCKS4, SOCKS5, HTTP). It is often used by penetration testers and privacy enthusiasts to route traffic through proxies or the Tor network.

🔗 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

---

## 🔍 What can proxychains do?

- Redirect the traffic of any application through proxy servers
- Support proxy chaining: multiple proxies in sequence
- Use SOCKS4, SOCKS5, or HTTP proxies
- Integrate easily with Tor (`127.0.0.1:9050`)
- Great for anonymizing tools like `nmap`, `curl`, `whois`, `ssh`, and `hydra`

---

## ⚙️ Basic Usage

```
proxychains <command>
```

Example:
```
proxychains curl http://example.com
```

This runs `curl` through the proxies defined in the config file.

---

## 🧰 Common Configuration Options

Configuration file: `/etc/proxychains.conf` or `~/.proxychains/proxychains.conf`

| Option               | Description                                                       |
|----------------------|-------------------------------------------------------------------|
| `strict_chain`       | Enforce the proxy order strictly                                  |
| `dynamic_chain`      | Use working proxies in any order                                  |
| `proxy_dns`          | Perform DNS resolution through the proxy                          |
| `tcp_read_time_out`  | Timeout in milliseconds for reading                               |
| `tcp_connect_time_out` | Timeout in milliseconds for connecting                          |
| `[Proxy List]`       | Define proxies in the format: `type IP port`                      |

**Example Proxy List**
```
# proxychains.conf
dynamic_chain
proxy_dns

[ProxyList]
socks5  127.0.0.1 9050
http    192.168.1.100 8080
```

---

## 🧪 Examples

### Run curl through proxychains
```
proxychains curl https://example.com
```

### Scan with nmap through a proxy
```
proxychains nmap -sT -Pn example.com
```

### Use whois through Tor
```
proxychains whois example.com
```

### SSH through a proxy (if allowed)
```
proxychains ssh user@example.com
```

---

## 🌐 Live Proxy Command Generator

Need to route tools through proxies or Tor?

👉 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

- Set up proxy type, IP, port, and chain order
- Generate `proxychains` commands for common tools
- Combine with tools like `nmap`, `hydra`, `httpie`, and `curl`

---

## 🔗 Useful Links

- [proxychains GitHub (original)](https://github.com/haad/proxychains)
- [proxychains-ng (active fork)](https://github.com/rofl0r/proxychains-ng)
- [Proxy Generator on SploitHQ](https://sploithq.com/proxy)
- [proxychains man page (die.net)](https://linux.die.net/man/1/proxychains)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the proxychains or proxychains-ng projects.

`proxychains` and `proxychains-ng` are open-source and distributed under the [GPLv2 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
