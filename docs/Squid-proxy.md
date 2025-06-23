# Squid Proxy

**Squid** is a high-performance, open-source proxy server and web cache daemon that supports HTTP, HTTPS, FTP, and more. It is used for caching web content, filtering traffic, and controlling access to web resources.

🔗 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

---

## 🔍 What can Squid do?

- Caching: Speed up web access by storing copies of frequently accessed content
- Access Control: Control and restrict user access based on IP, domain, or URL
- Proxying: Forward requests to other servers for HTTP, HTTPS, and FTP
- Bandwidth Management: Reduce bandwidth consumption through caching
- Privacy: Hide the client's IP address from the target server
- Authentication: Support for basic, digest, and NTLM authentication

---

## ⚙️ Basic Usage

Squid typically runs as a background service and requires configuration before use.

Start Squid:
```
sudo systemctl start squid
```

The default configuration file is located at `/etc/squid/squid.conf`.

---

## 🧰 Common Configuration Options

| Option                         | Description                                                |
|---------------------------------|------------------------------------------------------------|
| `http_port`                     | Define the port Squid listens on (default: 3128)            |
| `acl <name> src <ip/net>`       | Define access control lists (ACLs) for source IPs or nets |
| `http_access allow <acl_name>`  | Allow access based on ACL                                |
| `http_access deny <acl_name>`   | Deny access based on ACL                                  |
| `cache_dir`                     | Specify cache storage directory and size                   |
| `cache_mem`                     | Define the amount of memory to use for caching             |
| `refresh_pattern`               | Control how Squid refreshes cached content                 |
| `access_log`                    | Enable and specify location of the access log file         |
| `cache_log`                     | Enable and specify location of the cache log file          |
| `visible_hostname`              | Set the hostname Squid identifies as                       |
| `auth_param`                    | Configure authentication parameters                       |

---

## 🧪 Examples

### Basic configuration and start:
1. Install Squid:
```
sudo apt-get install squid
```

2. Edit `/etc/squid/squid.conf` to set `http_port`:
```
http_port 3128
```

3. Restart Squid:
```
sudo systemctl restart squid
```

### Allow access from specific IP:
In `squid.conf`, create an ACL:
```
acl my_network src 192.168.1.0/24
http_access allow my_network
```

### Block specific domains:
```
acl block_sites dstdomain .example.com
http_access deny block_sites
```

### Enable caching and logging:
```
cache_dir ufs /var/spool/squid 100 16 256
access_log /var/log/squid/access.log
cache_log /var/log/squid/cache.log
```

---

## 🌐 Live Proxy Command Generator

Need to configure Squid for your own use case?

👉 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

- Generate Squid configurations and commands for your needs
- Customize ports, ACLs, logging, caching, and more
- Easily test with tools like `curl`, `httpie`, and `nmap`

---

## 🔗 Useful Links

- [Squid Official Website](http://www.squid-cache.org/)
- [Squid GitHub Repository](https://github.com/squid-cache/squid)
- [Squid Man Page (die.net)](https://linux.die.net/man/5/squid.conf)
- [Squid Proxy Tools on SploitHQ](https://sploithq.com/proxy)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the Squid project.

Squid is open-source and distributed under the [GPLv2 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
