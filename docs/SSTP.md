# SSTP (Secure Socket Tunneling Protocol)

**SSTP** is a VPN protocol developed by Microsoft that tunnels PPP traffic over HTTPS (TCP port 443). It is designed to pass through most firewalls and proxy servers by mimicking regular HTTPS traffic, making it useful in restricted network environments.

🔗 [Use the SSTP Config Generator on SploitHQ](https://sploithq.com/vpn)

---

## 🔍 What can SSTP do?

- Establish VPN tunnels over HTTPS (TCP 443)
- Bypass restrictive firewalls and proxies
- Provide strong encryption via SSL/TLS
- Authenticate with username/password or certificates
- Integrate natively with Windows clients
- Work with Linux using `sstp-client` or `xl2tpd` + `pppd` stack

---

## ⚙️ Basic Usage (Linux)

To use SSTP on Linux, you'll typically use the `sstp-client` package or integrate via `NetworkManager`.

### Connect using `sstp-client`:
```
sudo sstpc --cert-warn --user <USERNAME> --password <PASSWORD> \
--log-level 3 sstp://vpn.example.com usepeerdns require-mschap-v2 require-mppe \
noauth noipdefault defaultroute replacedefaultroute usepeerdns persist \
nodetach
```

---

## 🧰 Common Options (sstp-client)

| Option                  | Description                                                   |
|-------------------------|---------------------------------------------------------------|
| `--user`                | VPN username                                                  |
| `--password`            | VPN password (or use a secrets file for security)             |
| `--cert-warn`           | Warn if the server certificate is invalid                     |
| `--log-level`           | Logging verbosity (0–4)                                       |
| `usepeerdns`            | Use DNS servers provided by the VPN                           |
| `require-mppe`          | Require Microsoft Point-to-Point Encryption                   |
| `require-mschap-v2`     | Use MSCHAPv2 authentication                                   |
| `replacedefaultroute`   | Route all traffic through VPN                                 |

> On Windows, SSTP is integrated into the built-in VPN client — simply import the server address and set credentials.

---

## 🧪 Examples

### Basic connection with logging and no certificate validation
```
sudo sstpc --user vpnuser --password secretpass \
--cert-warn sstp://vpn.example.com \
usepeerdns require-mschap-v2 require-mppe noauth noipdefault defaultroute \
replacedefaultroute usepeerdns persist
```

### Connect from Windows
1. Go to **Settings > Network & Internet > VPN**
2. Add a new VPN connection:
   - VPN Provider: Windows (built-in)
   - Server name or address: `vpn.example.com`
   - VPN type: Secure Socket Tunneling Protocol (SSTP)
   - Credentials: Username and password
3. Save and connect

---

## 🌐 Live VPN Config Generator

Want to build your SSTP command or Windows profile?

👉 [Use the SSTP Config Generator on SploitHQ](https://sploithq.com/vpn)

- Input your server and credentials
- Choose Linux or Windows usage
- Instantly generate a ready-to-use connection command

---

## 🔗 Useful Links

- [sstp-client GitHub Repository](https://github.com/sstp-project/sstp-client)
- [sstp-client Man Page (die.net)](https://linux.die.net/man/8/sstpc)
- [VPN Tools on SploitHQ](https://sploithq.com/vpn)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with Microsoft or the sstp-client project.

`sstop-client` is open-source and typically distributed under the GPL license. SSTP itself is a proprietary protocol introduced in Windows Vista SP1.
