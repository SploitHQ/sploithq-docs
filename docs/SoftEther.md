# SoftEther VPN

**SoftEther VPN** is a powerful, multi-protocol, open-source VPN solution that supports a wide range of VPN types including SSL-VPN, L2TP/IPsec, OpenVPN, and Microsoft SSTP. It runs on Windows, Linux, macOS, and more, and is ideal for building cross-platform VPN infrastructure with advanced features and high performance.

🔗 [Use the SoftEther Config Generator on SploitHQ](https://sploithq.com/vpn)

---

## 🔍 What can SoftEther do?

- Support multiple VPN protocols (SSL-VPN, L2TP/IPsec, OpenVPN, SSTP)
- Serve as VPN server, bridge, or client
- Bypass firewalls using HTTPS and NAT traversal
- Provide easy GUI administration (via SoftEther VPN Server Manager)
- Offer user authentication via password, certificate, or RADIUS
- Enable site-to-site VPNs, remote access, and virtual hubs

---

## ⚙️ Components

| Component                 | Purpose                                                       |
|---------------------------|---------------------------------------------------------------|
| **VPN Server**            | Core server accepting connections                            |
| **VPN Bridge**            | Connects two LANs over VPN (site-to-site)                    |
| **VPN Client**            | End-user software to connect to the server                   |
| **VPN Server Manager**    | Windows GUI tool to manage VPN Server                        |
| **vpncmd**                | Command-line management utility (cross-platform)             |

---

## 🧰 Common vpncmd Commands

| Command                        | Description                              |
|-------------------------------|------------------------------------------|
| `Hub <HUBNAME>`               | Switch to a specific virtual hub         |
| `UserCreate <username>`       | Create a new user                        |
| `UserPasswordSet <username>`  | Set password for a user                  |
| `BridgeCreate`                | Set up a local bridge to a physical NIC  |
| `CascadeCreate`               | Create site-to-site cascade connection   |
| `IPsecEnable`                 | Enable IPsec/L2TP/SSTP support           |
| `ServerCertSet`               | Set custom SSL/TLS certificate           |
| `SecureNatEnable`            | Enable NAT and DHCP on the virtual hub   |

---

## 🧪 Examples

### Start SoftEther VPN Server (Linux)
```
sudo /usr/local/vpnserver/vpnserver start
```

### Run the interactive command-line admin tool
```
sudo /usr/local/vpnserver/vpncmd
```

Then select `[1] Management of VPN Server or VPN Bridge`, enter `localhost`, and begin configuration.

### Enable L2TP/IPsec and set PSK
Inside `vpncmd`:
```
IPsecEnable
  L2TP: Yes
  Raw L2TP: No
  EtherIP: No
  Enable L2TP over IPsec: Yes
  Pre-shared Key: yoursharedsecret
  Default Hub: VPNHUB
```

### Create a user and set password
```
Hub VPNHUB
UserCreate testuser
UserPasswordSet testuser
```

---

## 🌐 Live Config Generator

Need help generating a SoftEther config?

👉 [Use the SoftEther Config Generator on SploitHQ](https://sploithq.com/vpn)

- Choose protocols to enable (SSL-VPN, L2TP/IPsec, etc.)
- Create user accounts, pre-shared keys, and NAT settings
- Generate `vpncmd` scripts or server init files

---

## 🔗 Useful Links

- [SoftEther VPN Official Site](https://www.softether.org/)
- [SoftEther GitHub Repository](https://github.com/SoftEtherVPN/SoftEtherVPN)
- [vpncmd Man Page (die.net)](https://linux.die.net/man/1/vpncmd)
- [VPN Tools on SploitHQ](https://sploithq.com/vpn)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the SoftEther project.

SoftEther VPN is open-source software licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).
