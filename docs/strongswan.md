# strongSwan

**strongSwan** is an open-source, IPsec-based VPN solution for Linux and other platforms. It supports site-to-site and remote access VPNs using IKEv1 and IKEv2 protocols and integrates well with firewalls, authentication backends, and certificate infrastructures.

🔗 [Use the strongSwan Config Generator on SploitHQ](https://sploithq.com/vpn)

---

## 🔍 What can strongSwan do?

- Build secure IPsec tunnels with IKEv1/IKEv2
- Authenticate using X.509 certificates, EAP, PSKs, and smartcards
- Support IPv4/IPv6 and NAT traversal
- Work in both site-to-site and road warrior (remote access) configurations
- Integrate with LDAP, RADIUS, and TPM modules
- Compatible with macOS, Android, Windows (via built-in IPsec clients)

---

## ⚙️ Basic Usage

### Start the strongSwan service
```
sudo systemctl start strongswan
```

strongSwan reads from configuration files located in `/etc/ipsec.conf` and `/etc/ipsec.secrets`.

---

## 🧰 Commonly Used Files and Commands

| Command / File              | Purpose                                                        |
|-----------------------------|----------------------------------------------------------------|
| `/etc/ipsec.conf`           | Main configuration file (defines connections and parameters)   |
| `/etc/ipsec.secrets`        | Stores credentials (PSKs, passwords, keys)                    |
| `ipsec start|stop|restart`  | Manage the IPsec service                                       |
| `ipsec up <conn-name>`      | Initiate a tunnel manually                                     |
| `ipsec down <conn-name>`    | Tear down a tunnel manually                                   |
| `ipsec status`              | View connection status                                        |
| `ipsec statusall`           | View detailed tunnel and daemon info                         |

---

## 🧪 Example: Basic ipsec.conf for IKEv2 Road Warrior

```
config setup
    charondebug="ike 2, cfg 2, knl 2, net 2"

conn ikev2-vpn
    auto=add
    compress=no
    type=tunnel
    keyexchange=ikev2
    fragmentation=yes
    forceencaps=yes
    dpdaction=clear
    dpddelay=300s
    rekey=no
    left=%any
    leftid=@vpn.example.com
    leftcert=server-cert.pem
    leftsendcert=always
    leftsubnet=0.0.0.0/0
    right=%any
    rightdns=1.1.1.1,8.8.8.8
    rightsourceip=10.10.10.0/24
    rightauth=eap-mschapv2
    eap_identity=%identity
```

### Example: ipsec.secrets
```
: RSA server-key.pem
vpnuser : EAP "strongpassword"
```

---

## 🌐 Live VPN Config Generator

Need help building a strongSwan config?

👉 [Use the strongSwan Config Generator on SploitHQ](https://sploithq.com/vpn)

- Choose IKEv1 or IKEv2
- Generate PSK or certificate-based configs
- Instantly create `ipsec.conf` and `ipsec.secrets` for clients or servers

---

## 🔗 Useful Links

- [strongSwan Official Site](https://www.strongswan.org/)
- [strongSwan GitHub Repository](https://github.com/strongswan/strongswan)
- [ipsec Man Page (die.net)](https://linux.die.net/man/8/ipsec)
- [VPN Tools on SploitHQ](https://sploithq.com/vpn)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the strongSwan project.

strongSwan is open-source software distributed under the [GPLv2 License](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).
