# Wordlists

Wordlists are essential in penetration testing, cybersecurity assessments, and password cracking operations. They are collections of words, phrases, and combinations that are used by tools like `Hydra`, `John the Ripper`, `Hashcat`, and more to perform dictionary attacks. A good wordlist is key to increasing the chances of successfully cracking passwords or discovering hidden resources.

🔗 [Use the Wordlist Generator on SploitHQ](https://sploithq.com/wordlists)

---

## 🔍 What can Wordlists do?

- Provide a list of potential passwords for password cracking tools
- Aid in brute force and dictionary attacks
- Used by many penetration testing and security auditing tools
- Can be customized for different languages, industries, or scenarios
- Often used in tools like `cewl`, `dirb`, `feroxbuster`, and `gobuster`

---

## ⚙️ Wordlist Usage

While wordlists are not tools by themselves, they are essential inputs for various penetration testing and hacking tools. Here are some examples of how wordlists are used:

### Example: Hydra (Brute Forcing Login)
```
hydra -l admin -P /path/to/wordlist.txt ftp://target.com
```

### Example: John the Ripper (Password Cracking)
```
john --wordlist=/path/to/wordlist.txt password_hashes.txt
```

### Example: Gobuster (Directory Busting)
```
gobuster dir -u https://target.com -w /path/to/wordlist.txt
```

---

## 🧰 Common Wordlist Options

| Option                  | Description                                                       |
|-------------------------|-------------------------------------------------------------------|
| `-w <wordlist>`          | Specify the wordlist to use for attacks or enumeration            |
| `--wordlist=<file>`      | Use a custom wordlist for a tool (e.g., Hydra, John the Ripper)   |
| `-d <directory>`         | Directory for storing or using wordlist (in tools like Gobuster)  |
| `-f <file>`              | Read from a file (useful for wordlist file formats)               |

---

## 🧪 Wordlist Examples

### Common Default Wordlists

Many tools include default wordlists that are good for quick attacks or testing:

- **RockYou**: Often used for password cracking, it contains a collection of common passwords.
- **SecLists**: A repository of wordlists used for various security testing purposes, including subdomain enumeration, password cracking, and brute-forcing.
- **DirBuster/DirSearch**: Wordlists for directory and file enumeration during penetration testing.

---

## 🌐 Wordlist Generators

Want to create or customize your own wordlist?

👉 [Use the Wordlist Generator on SploitHQ](https://sploithq.com/wordlists)

- Create wordlists from sources such as websites, files, or custom patterns
- Select from predefined wordlists or create your own for specific tests
- Generate wordlists based on input parameters and save them for future use

---

## 🔗 Useful Links

- [SecLists GitHub Repository](https://github.com/danielmiessler/SecLists)
- [RockYou Wordlist](https://github.com/praetorian-inc/rockyou)
- [Wordlist Generator on SploitHQ](https://sploithq.com/wordlists)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com). The Wordlist Generator on SploitHQ is not affiliated with any specific wordlist project but provides an interface for building and customizing wordlists for various penetration testing tasks.

Wordlists such as those found in SecLists or RockYou are open-source and distributed under their respective licenses.

