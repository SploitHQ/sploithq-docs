# nslookup

`nslookup` is a command-line tool used to query DNS servers for information about domains, IP addresses, and DNS records. It's available by default on most Unix-like systems and Windows, making it a convenient choice for basic DNS troubleshooting and reconnaissance.

🔗 [Use the nslookup Command Generator on SploitHQ](https://sploithq.com/nslookup)

---

## 🔍 What can nslookup do?

- Look up A, AAAA, MX, NS, TXT, and other DNS records
- Perform reverse lookups (IP to hostname)
- Query specific DNS servers
- Perform interactive queries for more detailed control
- Simple syntax for quick lookups or automation

---

## ⚙️ Basic Usage

```
nslookup example.com
```

This returns the A record(s) for the domain using the system’s default DNS server.

---

## 🧰 Commonly Used Options

| Option / Syntax                     | Description                                              |
|-------------------------------------|----------------------------------------------------------|
| `nslookup <domain>`                | Query default DNS server for A record                    |
| `nslookup <domain> <dns-server>`   | Use a specific DNS server                                |
| `set type=<record>`                | Specify record type (A, MX, TXT, etc.)                   |
| `set debug`                        | Enable verbose output                                    |
| `set timeout=<seconds>`            | Set query timeout                                        |
| `set retry=<number>`              | Set number of retries                                    |
| `set port=<port>`                  | Use a non-default port                                   |

---

## 🧪 Examples

### Basic query
```
nslookup example.com
```

### Use a specific DNS server
```
nslookup example.com 8.8.8.8
```

### Lookup MX records
```
nslookup
> set type=MX
> example.com
```

### Reverse DNS lookup
```
nslookup 8.8.8.8
```

### Enable debug mode
```
nslookup
> set debug
> example.com
```

---

## 🌐 Live nslookup Command Generator

Want to quickly generate nslookup commands?

👉 [Try the nslookup Command Generator on SploitHQ](https://sploithq.com/nslookup)

- Choose record types (A, MX, etc.)
- Specify custom DNS server or port
- Output a full ready-to-run command

---

## 🔗 Useful Links

- [nslookup man page](https://linux.die.net/man/1/nslookup)
- [nslookup Generator on SploitHQ](https://sploithq.com/nslookup)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with Microsoft, ISC, or BIND developers.

`nslookup` is commonly bundled with BIND and is available on Windows and Unix systems.
