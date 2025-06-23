# OpenConnect

**OpenConnect** is an open-source VPN client that supports Cisco AnyConnect, Juniper/Pulse Connect Secure, GlobalProtect, and other SSL-based VPN protocols. It provides a fast and secure way to connect to corporate VPNs from Linux, Windows, or macOS systems.

🔗 [Use the OpenConnect Config Generator on SploitHQ](https://sploithq.com/vpn)

---

## 🔍 What can OpenConnect do?

- Connect to Cisco AnyConnect-compatible VPNs using SSL/TLS
- Support protocols for Juniper, Pulse Secure, GlobalProtect, Fortinet, and more
- Integrate with systemd, NetworkManager, and scripting
- Provide split tunneling or full tunneling
- Support two-factor authentication and certificate-based login
- Use tun interfaces for traffic control and routing

---

## ⚙️ Basic Usage

### Connect to a VPN endpoint
```
sudo openconnect vpn.example.com
```

You’ll be prompted for a username and password (or certificate if required).

---

## 🧰 Commonly Used Options

| Option                     | Description                                                    |
|----------------------------|----------------------------------------------------------------|
| `--protocol=<type>`        | Set VPN type: `anyconnect`, `gp`, `pulse`, `nc`, `fortinet`    |
| `--user=<username>`        | Supply username for login                                      |
| `--passwd-on-stdin`        | Read password from standard input (useful in scripts)          |
| `--cafile=<file>`          | Provide custom CA certificate                                  |
| `--servercert pin-sha256:` | Pin the server cert fingerprint to prevent MITM                |
| `--script=<file>`          | Custom script for up/down actions (e.g., update DNS)           |
| `--no-dtls`                | Disable DTLS (UDP transport), use only TLS                     |
| `--background`             | Run OpenConnect in background after connecting                 |

---

## 🧪 Examples

### Basic connection with user prompt
```
sudo openconnect vpn.example.com
```

### Connect with specified user
```
sudo openconnect --user=myuser vpn.example.com
```

### Use GlobalProtect protocol
```
sudo openconnect --protocol=gp vpn.company.com
```

### Connect with password from script
```
echo "mypassword" | sudo openconnect --user=myuser --passwd-on-stdin vpn.example.com
```

### Disable DTLS and pin the certificate
```
sudo openconnect --no-dtls --servercert pin-sha256:abcdef123... vpn.example.com
```

---

## 🌐 Live VPN Config Generator

Want help building a reliable OpenConnect command?

👉 [Use the OpenConnect Config Generator on SploitHQ](https://sploithq.com/vpn)

- Choose your protocol (AnyConnect, GlobalProtect, Pulse, etc.)
- Input server, username, and options
- Instantly copy a ready-to-use terminal command

---

## 🔗 Useful Links

- [OpenConnect GitHub Repository](https://github.com/openconnect/openconnect)
- [OpenConnect Official Site](https://www.infradead.org/openconnect/)
- [openconnect Man Page (die.net)](https://linux.die.net/man/8/openconnect)
- [VPN Tools on SploitHQ](https://sploithq.com/vpn)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with Cisco or the OpenConnect developers.

OpenConnect is open-source software, licensed under the [LGPL v2.1](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html).
