# OpenVPN

**OpenVPN** is a full-featured, open-source VPN solution that uses SSL/TLS for secure key exchange. It allows you to securely tunnel network traffic over untrusted networks like public Wi-Fi or the open Internet. It's widely used for personal privacy, corporate remote access, and red team infrastructure.

🔗 [Use the OpenVPN Config Generator on SploitHQ](https://sploithq.com/vpn)

---

## 🔍 What can OpenVPN do?

- Encrypt all traffic using TLS and OpenSSL
- Authenticate clients using certificates, usernames, or static keys
- Support TCP or UDP transport over any port
- Tunnel entire networks (site-to-site) or individual clients (road warrior)
- Work behind NAT, firewalls, and proxies
- Provide IPv6 and DNS support inside the VPN tunnel

---

## ⚙️ Basic Usage

### Start OpenVPN with a configuration file
```
sudo openvpn --config client.ovpn
```

This launches OpenVPN using the parameters defined in the `client.ovpn` file.

---

## 🧰 Commonly Used Options

| Option                     | Description                                                         |
|----------------------------|---------------------------------------------------------------------|
| `--config <file>`          | Load options from a configuration file                              |
| `--remote <host> <port>`   | Set the remote VPN server and port                                  |
| `--dev <type>`             | Set the virtual interface type (`tun` for routing, `tap` for bridging) |
| `--proto <udp|tcp>`        | Choose UDP or TCP as the transport protocol                         |
| `--auth-user-pass`         | Enable username/password authentication                             |
| `--ca <file>`              | Specify CA certificate                                              |
| `--cert <file>`            | Specify client certificate                                          |
| `--key <file>`             | Specify client private key                                          |
| `--tls-auth <file>`        | Enable static key TLS authentication                                |
| `--daemon`                 | Run in background as a daemon                                       |
| `--log <file>`             | Write log output to a file                                          |

---

## 🧪 Examples

### Connect using a `.ovpn` config file
```
sudo openvpn --config /etc/openvpn/client.ovpn
```

### Manually specify connection parameters
```
sudo openvpn --remote vpn.example.com 1194 --proto udp --dev tun \
--ca ca.crt --cert client.crt --key client.key
```

### Use username/password authentication
```
sudo openvpn --config client.ovpn --auth-user-pass auth.txt
```

### Run OpenVPN in the background and log to file
```
sudo openvpn --config client.ovpn --daemon --log /var/log/openvpn.log
```

---

## 🌐 Live VPN Config Generator

Want to generate `.ovpn` configs or launch commands?

👉 [Use the OpenVPN Config Generator on SploitHQ](https://sploithq.com/vpn)

- Upload your certificates or choose username/password mode
- Select UDP or TCP, port, compression, and other options
- Instantly download the `.ovpn` file or launch command

---

## 🔗 Useful Links

- [OpenVPN Official Site](https://openvpn.net/)
- [OpenVPN GitHub Repository](https://github.com/OpenVPN/openvpn)
- [OpenVPN Man Page (die.net)](https://linux.die.net/man/8/openvpn)
- [VPN Tools on SploitHQ](https://sploithq.com/vpn)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the OpenVPN project.

OpenVPN is open-source and distributed under the [GNU GPL v2 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
