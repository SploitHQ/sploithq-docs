# dnsenum

`dnsenum` is a Perl-based command-line tool for DNS enumeration. It automates the process of gathering information about a domain, including hostnames, IP addresses, name servers, mail servers, and even attempting zone transfers and brute-force subdomains.

🔗 [Use the dnsenum Command Generator on SploitHQ](https://sploithq.com/dnsenum)

---

## 🔍 What can dnsenum do?

- Retrieve A, NS, and MX records for a domain
- Perform reverse lookups on IP ranges
- Attempt DNS zone transfers
- Use a wordlist to brute-force subdomains
- Identify domain registrar and nameservers
- Output results to a file

---

## ⚙️ Basic Usage

```
dnsenum example.com
```

This performs a standard enumeration of the target domain using default settings.

---

## 🧰 Commonly Used Options

| Option             | Description                                                    |
|--------------------|----------------------------------------------------------------|
| `--enum`           | Enable standard enumeration (A, NS, MX, zone transfer, etc.)   |
| `-f <file>`        | Use a wordlist file for subdomain brute-forcing               |
| `-r`               | Perform reverse lookup on IP ranges                            |
| `-p <threads>`     | Number of threads to use during brute-forcing (default is 5)  |
| `--noreverse`      | Disable reverse lookups                                        |
| `--nocolor`        | Disable colored output (useful for logging)                   |
| `-o <file>`        | Output results to a text file                                  |
| `-t <timeout>`     | Set timeout for DNS queries                                    |

---

## 🧪 Examples

### Basic enumeration
```
dnsenum example.com
```

### Full enumeration including subdomain brute-forcing
```
dnsenum --enum -f wordlist.txt example.com
```

### Brute-force with more threads and custom timeout
```
dnsenum -f subdomains.txt -p 10 -t 4 example.com
```

### Disable reverse lookups and colored output
```
dnsenum --noreverse --nocolor example.com
```

### Output results to a file
```
dnsenum -o results.txt example.com
```

---

## 🌐 Live dnsenum Command Generator

Want to generate dnsenum commands easily?

👉 [Try the dnsenum Command Generator on SploitHQ](https://sploithq.com/dnsenum)

- Customize threads, timeouts, brute-force wordlists, and more
- See your final command live
- Copy to clipboard with one click

---

## 🔗 Useful Links

- [Official dnsenum GitHub](https://github.com/fwaeytens/dnsenum)
- [dnsenum Generator on SploitHQ](https://sploithq.com/dnsenum)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the original authors of dnsenum.

dnsenum is an open source tool released under the [Artistic License 2.0](https://opensource.org/licenses/Artistic-2.0).
