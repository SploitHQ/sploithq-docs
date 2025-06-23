# Privoxy

`Privoxy` is a non-caching web proxy with advanced filtering capabilities for enhancing privacy, modifying web page data, managing cookies, and controlling access. It works well in combination with tools like Tor or VPNs to anonymize and filter traffic.

🔗 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

---

## 🔍 What can Privoxy do?

- Act as a local HTTP proxy for web filtering and privacy
- Block ads, tracking scripts, and unwanted content
- Rewrite or modify HTTP headers and page content
- Work with Tor to anonymize web browsing
- Control cookie handling and site access rules
- Run as a background service or daemon

---

## ⚙️ Basic Usage

Start the proxy (usually runs on `127.0.0.1:8118`):

```
sudo systemctl start privoxy
```

Configure your browser or tool (like `curl` or `httpie`) to use:

```
http://127.0.0.1:8118
```

---

## 🧰 Common Configuration Options

Privoxy is configured using its config file, typically at `/etc/privoxy/config`.

| Setting                   | Description                                                   |
|---------------------------|---------------------------------------------------------------|
| `listen-address`          | Set the interface and port (default: `127.0.0.1:8118`)        |
| `forward-socks5 / 127.0.0.1:9050 .` | Forward all traffic to a local SOCKS5 proxy (e.g. Tor) |
| `enable-remote-toggle`    | Allow remote toggling of filtering via browser                |
| `logfile`                 | Path to log file                                              |
| `confdir`, `logdir`       | Define configuration and log directories                     |
| `actionsfile`             | List of filtering rules                                       |

---

## 🧪 Examples

### Use with curl
```
curl --proxy http://127.0.0.1:8118 https://example.com
```

### Use with httpie
```
http --proxy=http:http://127.0.0.1:8118 https://example.com
```

### Forward traffic through Tor (in privoxy config)
```
forward-socks5 / 127.0.0.1:9050 .
```

### Start privoxy manually with a custom config
```
privoxy /path/to/config
```

---

## 🌐 Live Proxy Command Generator

Want to test tools like `curl`, `httpie`, or `feroxbuster` with proxies?

👉 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

- Build commands that route through Privoxy or Tor
- Use for browsing, scraping, enumeration, and testing
- Customize port, headers, authentication, and output

---

## 🔗 Useful Links

- [Privoxy Official Site](https://www.privoxy.org/)
- [Privoxy GitHub Mirror](https://github.com/Privoxy/privoxy)
- [Privoxy Man Page (die.net)](https://linux.die.net/man/8/privoxy)
- [Proxy Generator on SploitHQ](https://sploithq.com/proxy)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the Privoxy project.

Privoxy is free software licensed under the [GPLv2 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
