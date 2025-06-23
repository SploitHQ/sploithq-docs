# Shadowsocks

**Shadowsocks** is a secure SOCKS5 proxy designed to protect your Internet traffic. Originally developed for circumventing censorship, it encrypts traffic between a client and a server using modern ciphers. Unlike VPNs, it provides a lightweight, fast, and flexible solution for encrypted proxying.

🔗 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

---

## 🔍 What can Shadowsocks do?

- Route traffic through encrypted SOCKS5 proxy tunnels
- Evade firewalls, censorship, and deep packet inspection (DPI)
- Use fast and secure encryption (AEAD ciphers)
- Work on desktops, servers, and mobile devices
- Integrate with apps like `proxychains`, `curl`, and `httpie`

---

## ⚙️ Basic Usage

### Run Shadowsocks client
```
ss-local -s <server> -p <port> -k <password> -m <encryption> -l 1080
```

Example:
```
ss-local -s 1.2.3.4 -p 8388 -k mypassword -m aes-256-gcm -l 1080
```

This starts a local SOCKS5 proxy on port `1080`, forwarding traffic to the encrypted remote Shadowsocks server.

---

## 🧰 Commonly Used Options

| Option           | Description                                              |
|------------------|----------------------------------------------------------|
| `-s <server>`    | Shadowsocks server IP or domain                         |
| `-p <port>`      | Server port                                              |
| `-l <port>`      | Local port to run SOCKS5 proxy (default: 1080)          |
| `-k <password>`  | Password for encryption                                  |
| `-m <method>`    | Encryption method (e.g. `aes-256-gcm`, `chacha20-ietf`) |
| `-t <timeout>`   | Timeout for connections in seconds                       |
| `-u`             | Enable UDP relay support                                 |
| `-v`             | Verbose output                                           |
| `--fast-open`    | Enable TCP fast open (Linux only)                        |
| `--plugin`       | Specify plugin (e.g. `obfs`, `v2ray-plugin`)             |

---

## 🧪 Examples

### Start local SOCKS5 proxy
```
ss-local -s shadowsocks.example.com -p 443 -k secret -m chacha20-ietf-poly1305 -l 1080
```

### Route curl through Shadowsocks
```
curl --socks5-hostname 127.0.0.1:1080 https://example.com
```

### Use with proxychains
```
proxychains curl https://example.com
```

> Make sure `proxychains.conf` points to `socks5 127.0.0.1 1080`.

---

## 🌐 Live Proxy Command Generator

Want to generate Shadowsocks commands easily?

👉 [Use the Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

- Set server, port, cipher, and password
- Get complete command-line setup
- Compatible with curl, httpie, nmap, etc.

---

## 🔗 Useful Links

- [Shadowsocks GitHub (Python)](https://github.com/shadowsocks/shadowsocks)
- [Shadowsocks-libev (C version)](https://github.com/shadowsocks/shadowsocks-libev)
- [SploitHQ Proxy Tools](https://sploithq.com/proxy)
- [shadowsocks-libev man page (die.net)](https://linux.die.net/man/1/ss-local)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the original Shadowsocks project.

`Shadowsocks` and `shadowsocks-libev` are open-source and distributed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).
