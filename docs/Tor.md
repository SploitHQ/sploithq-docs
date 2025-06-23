# Tor (The Onion Router)

**Tor** is a free and open-source software for enabling anonymous communication over the internet. It routes internet traffic through a worldwide volunteer network of relays to conceal users' location and usage. It is widely used for privacy, security, and bypassing censorship.

🔗 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

---

## 🔍 What can Tor do?

- Provide anonymous browsing by routing traffic through multiple layers of encryption
- Help circumvent internet censorship and surveillance
- Enable access to .onion websites (hidden services)
- Provide a SOCKS5 proxy for routing traffic from other applications
- Support onion routing for secure communications

---

## ⚙️ Basic Usage

### Start Tor
To start Tor, you typically use the following command (assuming Tor is installed):

```
tor
```

This runs the Tor process, which listens on port 9050 by default.

### Use Tor as a SOCKS5 proxy

By default, Tor listens on `127.0.0.1:9050` for SOCKS5 traffic. You can route your applications through Tor by configuring them to use this proxy.

For example, with `curl`:
```
curl --socks5 127.0.0.1:9050 http://example.com
```

---

## 🧰 Common Configuration Options

| Option                         | Description                                                   |
|---------------------------------|---------------------------------------------------------------|
| `--SocksPort`                   | Define the SOCKS port (default: 9050)                         |
| `--ControlPort`                 | Enable a control port for managing the Tor process            |
| `--DataDirectory`               | Specify where Tor stores its data (such as cache and logs)    |
| `--ExitNodes`                   | Specify exit nodes (for example, `--ExitNodes {us}`)          |
| `--EntryNodes`                  | Specify entry nodes for better control over routing           |
| `--DisableNetwork`              | Disable network connections (useful for testing or debugging)|
| `--Proxy`                       | Set a proxy for Tor to connect through                        |

---

## 🧪 Examples

### Route traffic through Tor with curl
```
curl --socks5 127.0.0.1:9050 https://example.com
```

### Use Tor with proxychains
```
proxychains curl https://example.com
```

Make sure `proxychains.conf` is set to use `socks5 127.0.0.1 9050`.

### Use Tor with a custom exit node
```
tor --ExitNodes {us} --SocksPort 9050
```

This forces Tor to exit through an exit node in the United States.

### Tor for SSH tunneling
```
ssh -o "ProxyCommand torify nc %h %p" user@remote-host.com
```

This routes SSH traffic through Tor.

---

## 🌐 Live Proxy Command Generator

Want to route your traffic through Tor for anonymity?

👉 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

- Generate commands to route traffic through Tor
- Configure SOCKS5 proxy, entry and exit nodes, and other settings
- Ideal for privacy-conscious web scraping, research, and security testing

---

## 🔗 Useful Links

- [Tor Official Website](https://www.torproject.org/)
- [Tor Project GitHub Repository](https://github.com/torproject/tor)
- [Tor Man Page (die.net)](https://linux.die.net/man/1/tor)
- [Proxy Tools on SploitHQ](https://sploithq.com/proxy)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the Tor Project.

Tor is open-source and distributed under the [BSD License](https://opensource.org/licenses/BSD-3-Clause).
