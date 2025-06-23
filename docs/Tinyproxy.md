# Tinyproxy

**Tinyproxy** is a lightweight HTTP/HTTPS proxy server designed to be fast and minimal. It is often used for small networks or as an HTTP proxy for private browsing. It’s an ideal solution when you need a simple and resource-efficient proxy server.

🔗 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

---

## 🔍 What can Tinyproxy do?

- Act as a simple HTTP/HTTPS proxy server
- Restrict access to specific IP ranges or domains
- Provide logging and authentication support
- Work as a forward proxy to route requests
- Lightweight and resource-efficient, great for smaller applications

---

## ⚙️ Basic Usage

### Starting Tinyproxy
Once installed, you can start Tinyproxy using the following command:

```
sudo systemctl start tinyproxy
```

Configuration is typically done through the `/etc/tinyproxy/tinyproxy.conf` file.

---

## 🧰 Common Configuration Options

| Option                         | Description                                                   |
|---------------------------------|---------------------------------------------------------------|
| `Port`                          | Define the port Tinyproxy listens on (default: 8888)           |
| `Allow`                         | Allow access from a specific IP address or range              |
| `Deny`                          | Deny access from a specific IP address or range               |
| `LogFile`                       | Specify the location of the log file                          |
| `MaxClients`                    | Limit the number of simultaneous connections                  |
| `Timeout`                       | Set the timeout for requests in seconds                        |
| `EnableTransparent`             | Enable transparent proxy mode (useful for redirecting traffic) |
| `BasicAuth`                     | Enable basic authentication for proxy access                  |

---

## 🧪 Examples

### Start Tinyproxy and specify the port
```
sudo tinyproxy -c /etc/tinyproxy/tinyproxy.conf -p 8888
```

### Allow access from a specific IP
In the `tinyproxy.conf` file, add:
```
Allow 192.168.1.0/24
```

### Deny access from a specific IP
```
Deny 192.168.1.100
```

### Enable authentication
```
BasicAuth myuser mypassword
```

### Log to a specific file
```
LogFile /var/log/tinyproxy.log
```

### Transparent proxy mode
```
EnableTransparent yes
```

---

## 🌐 Live Proxy Command Generator

Need to quickly generate Tinyproxy commands or configuration?

👉 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

- Set up ports, logging, access controls, and authentication
- Get instant configuration and command-line commands
- Ideal for routing HTTP/HTTPS traffic through a lightweight proxy

---

## 🔗 Useful Links

- [Tinyproxy Official Website](https://tinyproxy.github.io/)
- [Tinyproxy GitHub Repository](https://github.com/tinyproxy/tinyproxy)
- [Tinyproxy Man Page (die.net)](https://linux.die.net/man/8/tinyproxy)
- [Proxy Tools on SploitHQ](https://sploithq.com/proxy)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the Tinyproxy project.

Tinyproxy is open-source and distributed under the [GPLv2 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
