# dirb

`dirb` is a command-line tool used for web content scanning. It is primarily used to find hidden directories and files on a web server by using a dictionary-based brute force method. It's a valuable tool for penetration testers and security researchers to uncover resources that might not be linked directly on a website but are accessible to those who know the paths.

🔗 [Use the dirb Command Generator on SploitHQ](https://sploithq.com/dirb)

---

## 🔍 What can dirb do?

- Discover hidden directories and files on a web server
- Brute-force directories using a customizable wordlist
- Perform a dictionary attack on the web server’s filesystem
- Identify security weaknesses by revealing sensitive directories
- Useful for web application security assessments

---

## ⚙️ Basic Usage

```
dirb http://example.com
```

This will run a basic scan on the target `example.com` using the default wordlist.

---

## 🧰 Commonly Used Options

| Option               | Description                                                          |
|----------------------|----------------------------------------------------------------------|
| `dirb <url>`         | Start a basic directory brute-force scan on the target URL           |
| `-w <wordlist>`      | Specify a custom wordlist to use for the scan                        |
| `-o <file>`          | Save the results to a file                                           |
| `-x <ext>`           | Append a file extension (e.g., `.php`, `.html`) to each word         |
| `-r`                 | Disable recursive scanning                                           |
| `-t <timeout>`       | Set the timeout for each request (default is 10 seconds)              |
| `-l`                 | Display the response code for each request                           |
| `-u`                 | Specify a user-agent string to use for requests                      |
| `-p <proxy>`         | Use a proxy for the scan                                             |
| `-c`                 | Display response code for each attempt (e.g., 200, 301, 403)        |

---

## 🧪 Examples

### Basic scan on a website
```
dirb http://example.com
```

### Use a custom wordlist
```
dirb http://example.com -w /path/to/wordlist.txt
```

### Save results to a file
```
dirb http://example.com -o scan_results.txt
```

### Append a `.php` extension to every word
```
dirb http://example.com -x .php
```

### Use a proxy for the scan
```
dirb http://example.com -p http://127.0.0.1:8080
```

---

## 🌐 Live dirb Command Generator

Want to generate a `dirb` command quickly?

👉 [Try the dirb Command Generator on SploitHQ](https://sploithq.com/dirb)

- Select your wordlist, extensions, and options
- Get the command ready for copy-paste
- Customize your scan settings with a few clicks

---

## 🔗 Useful Links

- [dirb GitHub Repository](https://github.com/v0re/dirb)
- [dirb Generator on SploitHQ](https://sploithq.com/dirb)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the dirb project.

`dirb` is open-source and distributed under the [GPL-2.0 License](https://opensource.org/licenses/GPL-2.0).
