# sublist3r

`sublist3r` is a fast subdomain enumeration tool written in Python. It helps security researchers and penetration testers discover subdomains of websites using various search engines and other public sources. `sublist3r` is optimized for speed and accuracy and is widely used for passive reconnaissance.

🔗 [Use the sublist3r Command Generator on SploitHQ](https://sploithq.com/sublist3r)

---

## 🔍 What can sublist3r do?

- Discover subdomains using search engines, DNS, and other public sources
- Perform subdomain enumeration through passive information gathering
- Provide results in seconds with minimal resources
- Output results in various formats, including plain text and CSV

---

## ⚙️ Basic Usage

```
sublist3r -d example.com
```

This will search for subdomains of `example.com` across multiple search engines and other sources.

---

## 🧰 Commonly Used Options

| Option                  | Description                                                       |
|-------------------------|-------------------------------------------------------------------|
| `-d <domain>`           | Specify the domain to enumerate subdomains for                   |
| `-o <file>`             | Save the output to a file                                         |
| `-v`                    | Enable verbose output for more details                           |
| `-t <threads>`          | Set the number of threads to use for the scan (default is 10)     |
| `-b <bruteforce>`       | Use brute force for subdomain enumeration (specify wordlist)     |
| `-p`                    | Enable passive mode (default is active)                          |
| `-s <search_engines>`   | Specify which search engines to use (default: all available)     |

---

## 🧪 Examples

### Basic subdomain discovery
```
sublist3r -d example.com
```

### Save results to a file
```
sublist3r -d example.com -o subdomains.txt
```

### Increase the number of threads to 50
```
sublist3r -d example.com -t 50
```

### Use brute force with a custom wordlist
```
sublist3r -d example.com -b /path/to/wordlist.txt
```

### Enable verbose output
```
sublist3r -d example.com -v
```

---

## 🌐 Live sublist3r Command Generator

Want to generate a `sublist3r` command quickly?

👉 [Try the sublist3r Command Generator on SploitHQ](https://sploithq.com/sublist3r)

- Select the domain, threads, brute force, and more
- Generate a scan command and copy it with ease
- Customize search engine options and verbosity

---

## 🔗 Useful Links

- [sublist3r GitHub Repository](https://github.com/aboul3la/Sublist3r)
- [sublist3r Generator on SploitHQ](https://sploithq.com/sublist3r)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the sublist3r project.

`sublist3r` is open-source and distributed under the [MIT License](https://opensource.org/licenses/MIT).
