# amass

`amass` is an open-source tool designed for advanced DNS enumeration and subdomain discovery. It's particularly useful for penetration testers and red teamers to map out an organization's external DNS footprint. `amass` can perform passive and active reconnaissance to uncover subdomains, IPs, and additional related infrastructure.

🔗 [Use the amass Command Generator on SploitHQ](https://sploithq.com/amass)

---

## 🔍 What can amass do?

- Discover subdomains through passive and active techniques
- Use multiple sources, including public data, DNS queries, and bruteforce
- Perform ASN and IP address enumeration
- Enumerate DNS information for specific domains
- Create a network topology map for further assessments

---

## ⚙️ Basic Usage

```
amass enum -d example.com
```

This command runs a simple subdomain enumeration for the target `example.com`.

---

## 🧰 Commonly Used Options

| Option               | Description                                                      |
|----------------------|------------------------------------------------------------------|
| `amass enum -d <domain>` | Discover subdomains for a domain                                |
| `-ip`                 | Show IP addresses for discovered subdomains                      |
| `-o <file>`           | Save results to a file                                           |
| `-src`                | Show the sources of the subdomains                               |
| `-brute`              | Enable brute-forcing of subdomains                               |
| `-active`             | Perform active enumeration (e.g., DNS queries)                   |
| `-passive`            | Perform passive enumeration (e.g., using DNS records)           |
| `-v`                  | Increase verbosity of the output                                 |
| `-p <provider>`       | Use a specific API provider (e.g., Google, Bing)                 |
| `-timeout <seconds>`  | Set a timeout for each query (default is 30 seconds)             |

---

## 🧪 Examples

### Basic subdomain enumeration
```
amass enum -d example.com
```

### Discover subdomains with IP addresses
```
amass enum -d example.com -ip
```

### Save results to a file
```
amass enum -d example.com -o amass_results.txt
```

### Brute force subdomains
```
amass enum -d example.com -brute
```

### Perform active enumeration
```
amass enum -d example.com -active
```

---

## 🌐 Live amass Command Generator

Want to generate an `amass` command quickly?

👉 [Try the amass Command Generator on SploitHQ](https://sploithq.com/amass)

- Choose your enumeration methods (passive, active, brute force)
- Save results to a file or view them in the terminal
- Customize sources and verbosity

---

## 🔗 Useful Links

- [amass GitHub Repository](https://github.com/OWASP/Amass)
- [amass Generator on SploitHQ](https://sploithq.com/amass)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the OWASP Amass project.

`amass` is open-source and distributed under the [MIT License](https://opensource.org/licenses/MIT).
