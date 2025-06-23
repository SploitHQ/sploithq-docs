# feroxbuster

`feroxbuster` is a fast, robust, and flexible command-line tool designed for web content discovery. It is used for directory and file brute-forcing on web servers, with advanced features like recursive scanning, multithreading, and customizable wordlists. It's an essential tool for penetration testers and red teamers who need to discover hidden resources on web servers.

🔗 [Use the feroxbuster Command Generator on SploitHQ](https://sploithq.com/feroxbuster)

---

## 🔍 What can feroxbuster do?

- Discover directories and files on a web server
- Brute-force web paths using customizable wordlists
- Perform recursive scanning to identify deeper files and directories
- Control scan speed with multithreading and timeout options
- Easily save results for later analysis

---

## ⚙️ Basic Usage

```
feroxbuster -u http://example.com
```

This will run a basic scan on the target `example.com` using the default wordlist.

---

## 🧰 Commonly Used Options

| Option               | Description                                                          |
|----------------------|----------------------------------------------------------------------|
| `-u <url>`           | The target URL (e.g., `http://example.com`)                          |
| `-w <wordlist>`      | Specify a custom wordlist to use for the scan                        |
| `-t <threads>`       | Set the number of threads to use for scanning (default is 50)        |
| `-x <ext>`           | Append a file extension (e.g., `.php`, `.html`) to each word         |
| `-r`                 | Enable recursive scanning to discover deeper directories             |
| `-o <file>`          | Save the results to a file                                           |
| `-s <status>`        | Filter results by HTTP status codes (e.g., `-s 200,301`)             |
| `--exclude <path>`   | Exclude specific paths from being scanned                            |
| `-p <proxy>`         | Use a proxy for the scan                                             |
| `-v`                 | Enable verbose output for debugging and detailed logging             |
| `--follow-redirects` | Follow HTTP redirects during the scan                                |

---

## 🧪 Examples

### Basic scan on a website
```
feroxbuster -u http://example.com
```

### Use a custom wordlist
```
feroxbuster -u http://example.com -w /path/to/wordlist.txt
```

### Scan with 100 threads
```
feroxbuster -u http://example.com -t 100
```

### Save results to a file
```
feroxbuster -u http://example.com -o scan_results.txt
```

### Append a `.php` extension to each word
```
feroxbuster -u http://example.com -x .php
```

### Enable recursive scanning
```
feroxbuster -u http://example.com -r
```

### Filter results by status code
```
feroxbuster -u http://example.com -s 200,301
```

---

## 🌐 Live feroxbuster Command Generator

Want to generate a `feroxbuster` command quickly?

👉 [Try the feroxbuster Command Generator on SploitHQ](https://sploithq.com/feroxbuster)

- Choose your wordlist, threads, and options
- Get the command ready for copy-paste
- Customize your scan settings with ease

---

## 🔗 Useful Links

- [feroxbuster GitHub Repository](https://github.com/epi052/feroxbuster)
- [feroxbuster Generator on SploitHQ](https://sploithq.com/feroxbuster)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the feroxbuster project.

`feroxbuster` is open-source and distributed under the [MIT License](https://opensource.org/licenses/MIT).
