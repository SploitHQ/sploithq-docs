# ffuf (Fuzz Faster U Fool)

`ffuf` is a fast web fuzzer written in Go, designed to perform directory and file brute-forcing. It is an efficient tool for discovering hidden resources on a web server, utilizing multiple wordlists, proxies, and custom headers. `ffuf` is highly configurable, allowing fine-grained control over scan parameters like request speed, file extensions, and response codes.

🔗 [Use the ffuf Command Generator on SploitHQ](https://sploithq.com/ffuf)

---

## 🔍 What can ffuf do?

- Discover hidden directories and files on web servers
- Perform a high-speed brute force scan using customizable wordlists
- Easily specify extensions, filters, and response codes
- Customize headers and user agents for more precise fuzzing
- Use proxies for scanning or tunneling requests

---

## ⚙️ Basic Usage

```
ffuf -u http://example.com/FUZZ -w /path/to/wordlist.txt
```

This will run a scan on the `example.com` website, replacing `FUZZ` with words from the specified wordlist.

---

## 🧰 Commonly Used Options

| Option                 | Description                                                       |
|------------------------|-------------------------------------------------------------------|
| `-u <url>`             | The target URL with `FUZZ` keyword (e.g., `http://example.com/FUZZ`) |
| `-w <wordlist>`        | Specify a wordlist to use for the scan                            |
| `-t <threads>`         | Set the number of threads to use for the scan (default is 40)     |
| `-x <ext>`             | Append file extensions to each word in the wordlist               |
| `-r`                   | Disable recursive scan (scan only the root path)                 |
| `-s <status>`          | Filter results by status code (e.g., `-s 200,301`)                |
| `-o <file>`            | Save the results to a file                                        |
| `-H <header>`          | Specify custom headers for requests                                |
| `-p <proxy>`           | Use a proxy for the scan                                          |
| `-v`                   | Enable verbose output for detailed information                    |
| `-l`                   | Show detailed response data (e.g., body length, status code)     |

---

## 🧪 Examples

### Basic scan with a wordlist
```
ffuf -u http://example.com/FUZZ -w /path/to/wordlist.txt
```

### Scan with a custom wordlist and additional extensions
```
ffuf -u http://example.com/FUZZ -w /path/to/wordlist.txt -x .php,.html
```

### Set the number of threads to 100
```
ffuf -u http://example.com/FUZZ -w /path/to/wordlist.txt -t 100
```

### Filter results for 200 and 301 status codes
```
ffuf -u http://example.com/FUZZ -w /path/to/wordlist.txt -s 200,301
```

### Save the results to a file
```
ffuf -u http://example.com/FUZZ -w /path/to/wordlist.txt -o results.txt
```

### Specify a custom header
```
ffuf -u http://example.com/FUZZ -w /path/to/wordlist.txt -H "User-Agent: CustomAgent"
```

### Use a proxy for the scan
```
ffuf -u http://example.com/FUZZ -w /path/to/wordlist.txt -p http://127.0.0.1:8080
```

---

## 🌐 Live ffuf Command Generator

Want to generate a `ffuf` command quickly?

👉 [Try the ffuf Command Generator on SploitHQ](https://sploithq.com/ffuf)

- Choose your wordlist, threads, extensions, and more
- Generate a scan command and copy it with ease
- Customize headers, proxies, and status filters

---

## 🔗 Useful Links

- [ffuf GitHub Repository](https://github.com/ffuf/ffuf)
- [ffuf Generator on SploitHQ](https://sploithq.com/ffuf)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the ffuf project.

`ffuf` is open-source and distributed under the [MIT License](https://opensource.org/licenses/MIT).
