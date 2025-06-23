# IPsec (Internet Protocol Security)

**IPsec** is a suite of protocols for securing IP communications by authenticating and encrypting each IP packet. It operates at the network layer and is widely used for VPNs, especially in enterprise and infrastructure-grade security solutions.

🔗 [Use the IPsec Config Generator on SploitHQ](https://sploithq.com/vpn)

---

## 🔍 What can IPsec do?

- Secure communication over untrusted networks (e.g., the internet)
- Encrypt and authenticate IP packets between two hosts or gateways
- Support site-to-site and remote access VPNs
- Work in transport or tunnel mode
- Integrate with IKEv1 or IKEv2 for key exchange
- Compatible with most OS-level VPN clients (Linux, Windows, macOS, Android)

---

## ⚙️ IPsec Modes

| Mode         | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| **Transport** | Encrypts only the payload of IP packets; commonly used for host-to-host VPNs |
| **Tunnel**    | Encrypts the entire IP packet; used for site-to-site or road warrior VPNs    |

---

## 🧰 Commonly Used Tools with IPsec

| Tool        | Description                                      |
|-------------|--------------------------------------------------|
| `strongSwan`| Popular open-source IPsec implementation (IKEv1/IKEv2) |
| `Libreswan` | Another robust IPsec implementation              |
| `ipsec`     | Front-end command provided by strongSwan or Libreswan |
| `racoon`    | Legacy IKE daemon (not commonly used today)      |
| `setkey`    | Manual SPD/SAD configuration (low-level, deprecated) |

---

## 🧪 Example IPsec Setup with strongSwan

### ipsec.conf
```
conn myvpn
    keyexchange=ikev2
    left=%any
    leftid=@vpn.example.com
    leftcert=server-cert.pem
    leftsubnet=0.0.0.0/0
    right=%any
    rightauth=eap-mschapv2
    rightsourceip=10.0.0.0/24
    auto=add
```

### ipsec.secrets
```
: RSA server-key.pem
vpnuser : EAP "password123"
```

### Start and connect
```
sudo systemctl start strongswan
sudo ipsec up myvpn
```

---

## 🌐 Live VPN Config Generator

Not sure how to build your IPsec configs?

👉 [Use the IPsec Config Generator on SploitHQ](https://sploithq.com/vpn)

- Choose IKE version, auth method, and tunnel mode
- Get full `ipsec.conf` and `ipsec.secrets` templates
- Generate site-to-site or remote access configs

---

## 🔗 Useful Links

- [strongSwan Official Site](https://www.strongswan.org/)
- [Libreswan Official Site](https://libreswan.org/)
- [ipsec Man Page (die.net)](https://linux.die.net/man/8/ipsec)
- [VPN Tools on SploitHQ](https://sploithq.com/vpn)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with any IPsec project.

IPsec is a standardized protocol suite defined in [RFC 4301](https://datatracker.ietf.org/doc/html/rfc4301) and implemented by multiple open-source and commercial tools.
