# subfinder

`subfinder` is a fast subdomain discovery tool written in Go. It is designed for security researchers and penetration testers to find subdomains using passive information gathering methods. It is highly efficient, capable of performing subdomain enumeration with minimal resource usage.

🔗 [Use the subfinder Command Generator on SploitHQ](https://sploithq.com/subfinder)

---

## 🔍 What can subfinder do?

- Discover subdomains through passive methods
- Gather subdomains from multiple sources like DNS, search engines, and certificate transparency logs
- Provide a list of discovered subdomains in seconds
- Supports integration with multiple subdomain enumeration services

---

## ⚙️ Basic Usage

```
subfinder -d example.com
```

This will search for subdomains of `example.com` using passive techniques.

---

## 🧰 Commonly Used Options

| Option                  | Description                                                       |
|-------------------------|-------------------------------------------------------------------|
| `-d <domain>`           | Specify the domain to enumerate subdomains for                   |
| `-o <file>`             | Save the output to a file                                         |
| `-v`                    | Enable verbose output for more details                           |
| `-t <threads>`          | Set the number of threads to use for the scan (default is 10)     |
| `-p <provider>`         | Specify a provider to use for subdomain enumeration              |
| `-r`                    | Enable recursive subdomain enumeration                           |
| `-w <wordlist>`         | Use a custom wordlist for enumeration                            |
| `-silent`               | Only print results (no additional info)                          |
| `-resolve`              | Resolve subdomains to IP addresses                               |

---

## 🧪 Examples

### Basic subdomain discovery
```
subfinder -d example.com
```

### Save results to a file
```
subfinder -d example.com -o subdomains.txt
```

### Increase the number of threads to 50
```
subfinder -d example.com -t 50
```

### Use a custom wordlist
```
subfinder -d example.com -w /path/to/wordlist.txt
```

### Enable recursive enumeration
```
subfinder -d example.com -r
```

### Resolve subdomains to IP addresses
```
subfinder -d example.com -resolve
```

---

## 🌐 Live subfinder Command Generator

Want to generate a `subfinder` command quickly?

👉 [Try the subfinder Command Generator on SploitHQ](https://sploithq.com/subfinder)

- Select the domain, wordlist, threads, and more
- Generate a scan command and copy it with ease
- Customize options like recursive enumeration and providers

---

## 🔗 Useful Links

- [subfinder GitHub Repository](https://github.com/projectdiscovery/subfinder)
- [subfinder Generator on SploitHQ](https://sploithq.com/subfinder)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the subfinder project.

`subfinder` is open-source and distributed under the [MIT License](https://opensource.org/licenses/MIT).
