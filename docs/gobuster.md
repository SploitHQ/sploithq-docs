# gobuster

`gobuster` is a fast and efficient tool written in Go, used for directory and DNS subdomain brute-forcing. It is highly effective for web content discovery and DNS enumeration. `gobuster` works by sending HTTP requests and DNS queries, respectively, to find hidden files, directories, and subdomains on a target server.

🔗 [Use the gobuster Command Generator on SploitHQ](https://sploithq.com/gobuster)

---

## 🔍 What can gobuster do?

- Discover hidden directories and files on a web server
- Perform DNS subdomain enumeration
- Brute-force URLs using custom wordlists
- Specify custom headers, status codes, and proxies for more control
- Perform recursive scans to discover deeper paths

---

## ⚙️ Basic Usage

```
gobuster dir -u http://example.com -w /path/to/wordlist.txt
```

This will run a directory scan on `example.com`, replacing `FUZZ` with words from the specified wordlist.

---

## 🧰 Commonly Used Options

| Option                 | Description                                                       |
|------------------------|-------------------------------------------------------------------|
| `dir`                  | Mode for directory brute-forcing                                  |
| `dns`                  | Mode for DNS subdomain brute-forcing                              |
| `-u <url>`             | The target URL (e.g., `http://example.com`)                       |
| `-w <wordlist>`        | Specify a wordlist to use for the scan                            |
| `-t <threads>`         | Set the number of threads to use for the scan (default is 10)     |
| `-x <ext>`             | Append file extensions to each word in the wordlist               |
| `-o <file>`            | Save the results to a file                                        |
| `-s <status>`          | Filter results by HTTP status code (e.g., `-s 200,301`)           |
| `-H <header>`          | Specify custom headers for requests                                |
| `-p <proxy>`           | Use a proxy for the scan                                          |
| `-v`                   | Enable verbose output for detailed information                    |

---

## 🧪 Examples

### Directory scan
```
gobuster dir -u http://example.com -w /path/to/wordlist.txt
```

### DNS subdomain scan
```
gobuster dns -d example.com -w /path/to/wordlist.txt
```

### Directory scan with a custom extension (e.g., `.php`)
```
gobuster dir -u http://example.com -w /path/to/wordlist.txt -x .php
```

### Scan with 50 threads
```
gobuster dir -u http://example.com -w /path/to/wordlist.txt -t 50
```

### Save results to a file
```
gobuster dir -u http://example.com -w /path/to/wordlist.txt -o results.txt
```

### Filter results by HTTP status code
```
gobuster dir -u http://example.com -w /path/to/wordlist.txt -s 200,301
```

### Use a custom header
```
gobuster dir -u http://example.com -w /path/to/wordlist.txt -H "User-Agent: CustomAgent"
```

### Use a proxy for the scan
```
gobuster dir -u http://example.com -w /path/to/wordlist.txt -p http://127.0.0.1:8080
```

---

## 🌐 Live gobuster Command Generator

Want to generate a `gobuster` command quickly?

👉 [Try the gobuster Command Generator on SploitHQ](https://sploithq.com/gobuster)

- Choose your wordlist, threads, extensions, and more
- Generate a scan command and copy it with ease
- Customize headers, proxies, and status filters

---

## 🔗 Useful Links

- [gobuster GitHub Repository](https://github.com/OJ/gobuster)
- [gobuster Generator on SploitHQ](https://sploithq.com/gobuster)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the gobuster project.

`gobuster` is open-source and distributed under the [MIT License](https://opensource.org/licenses/MIT).
