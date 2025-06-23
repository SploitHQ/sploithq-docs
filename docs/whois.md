# whois

`whois` is a command-line utility used to query domain registration details from WHOIS databases. It's commonly used by penetration testers, researchers, and sysadmins to discover information about domain ownership, registrar data, expiration dates, and contact details.

🔗 [Use the whois Command Generator on SploitHQ](https://sploithq.com/whois)

---

## 🔍 What can whois do?

- Retrieve domain registration and ownership information
- Check registrar, name servers, and expiration dates
- Investigate IP allocations and ASNs
- Help identify infrastructure ownership for reconnaissance
- Useful for OSINT, compliance, and domain tracking

---

## ⚙️ Basic Usage

```
whois example.com
```

This retrieves the WHOIS record for the domain using your system’s default WHOIS server or protocol.

---

## 🧰 Commonly Used Options

| Option              | Description                                                  |
|---------------------|--------------------------------------------------------------|
| `whois <domain>`    | Look up registration info for a domain                      |
| `whois <IP>`        | Lookup info for an IP address or ASN                        |
| `-h <host>`         | Query a specific WHOIS server                                |
| `--verbose`         | Provide more detailed output (varies by implementation)      |
| `--raw`             | Show raw output (when supported)                             |
| `-p <port>`         | Specify port (default is 43)                                 |

> Note: Available options may vary slightly by system (e.g., Debian, macOS, BusyBox).

---

## 🧪 Examples

### Lookup domain registration
```
whois example.com
```

### Lookup IP allocation
```
whois 8.8.8.8
```

### Use a specific WHOIS server
```
whois -h whois.verisign-grs.com example.com
```

### Query an ASN
```
whois AS15169
```

---

## 🌐 Live whois Command Generator

Want to generate a whois command in your browser?

👉 [Try the whois Command Generator on SploitHQ](https://sploithq.com/whois)

- Choose target (domain, IP, or ASN)
- Specify WHOIS server if needed
- Copy ready-to-use commands instantly

---

## 🔗 Useful Links

- [whois Generator on SploitHQ](https://sploithq.com/whois)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with any specific WHOIS provider.

`whois` is open source and typically included in packages like `bsdmainutils`, `inetutils`, or `jwhois`, depending on the OS.
