# dig (Domain Information Groper)

`dig` is a command-line DNS lookup tool used for querying Domain Name System (DNS) servers. It's widely used by network admins, penetration testers, and anyone troubleshooting DNS-related issues.

🔗 [Use the dig Command Generator on SploitHQ](https://sploithq.com/dig)

---

## 🔍 What can dig do?

- Retrieve DNS records (A, AAAA, MX, NS, TXT, etc.)
- Perform reverse lookups
- Trace DNS resolution paths
- Query specific DNS servers
- Format output for scripting or readability

---

## ⚙️ Basic Usage

```
dig example.com
```

This returns the default A record for the domain.

---

## 🧰 Commonly Used Options

| Option        | Description                                              |
|---------------|----------------------------------------------------------|
| `@server`     | Use a specific DNS server (e.g. `@8.8.8.8`)              |
| `+short`      | Return concise output (ideal for scripting)              |
| `+trace`      | Perform a full recursive trace to the root DNS servers   |
| `+all`        | Show all available information                           |
| `-x IP`       | Perform reverse DNS lookup on an IP address              |
| `ANY`         | Query all record types for a domain                      |
| `MX`, `NS`, etc. | Query a specific record type                          |

---

## 🧪 Examples

### Query A record
```
dig example.com
```

### Use Google's DNS
```
dig @8.8.8.8 example.com
```

### Get only the IP (short output)
```
dig +short example.com
```

### Trace full DNS resolution
```
dig +trace example.com
```

### Reverse DNS lookup
```
dig -x 8.8.8.8
```

### Query MX records
```
dig example.com MX
```

---

## 🌐 Live dig Command Generator

Want to build dig commands in your browser?

👉 [Try the dig Command Generator on SploitHQ](https://sploithq.com/dig)

- Choose record types and options
- Preview commands live
- Copy to clipboard with one click

---

## 🔗 Useful Links

- [Official dig man page](https://linux.die.net/man/1/dig)
- [dig Generator on SploitHQ](https://sploithq.com/dig)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the ISC or BIND projects.
