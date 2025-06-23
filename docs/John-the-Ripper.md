# John the Ripper – Password Cracking Tool

**John the Ripper** (JtR) is a powerful, fast password cracker used to recover weak or stolen passwords. It supports a variety of hash formats and can run in multiple modes including wordlist, incremental (brute-force), and rule-based.

🔗 [Use the John the Ripper Guide on SploitHQ](https://sploithq.com/john-the-ripper)

---

## 🔍 What Can John Do?

- Crack hashed passwords from `/etc/shadow`, `/etc/passwd`, ZIP files, Office documents, and more
- Support over 100 hash formats (MD5, bcrypt, SHA*, NTLM, etc.)
- Perform dictionary, brute-force, and hybrid attacks
- Use customizable rules to mutate wordlists

---

## ⚙️ Basic Syntax

```bash
john [options] <hashfile>
```

You can extract hashes using built-in tools or `unshadow`, `zip2john`, `pdf2john`, etc.

---

## 🧰 Common Options

| Option              | Description                                      |
|---------------------|--------------------------------------------------|
| `--wordlist=file`   | Use a custom wordlist                            |
| `--rules`           | Apply mutation rules to wordlist entries         |
| `--format=format`   | Specify hash type (e.g., `nt`, `bcrypt`, `sha512`)|
| `--show`            | Display cracked passwords from the session       |
| `--incremental`     | Use brute-force mode with character set guessing |
| `--session=name`    | Name the cracking session for resuming later     |
| `--restore`         | Resume an interrupted cracking session           |

---

## 🧪 Examples

### Crack a password hash file using a wordlist
```bash
john --wordlist=rockyou.txt hashes.txt
```

### Crack NTLM hashes
```bash
john --format=nt --wordlist=rockyou.txt ntlm.txt
```

### Brute-force using incremental mode
```bash
john --incremental hashes.txt
```

### Show cracked passwords
```bash
john --show hashes.txt
```

### Use zip2john to extract ZIP hash and crack it
```bash
zip2john secret.zip > zip.hash
john zip.hash --wordlist=rockyou.txt
```

---

## 🧩 Supported Formats

Run this to list formats supported on your system:
```bash
john --list=formats
```

Popular formats: `raw-md5`, `sha256crypt`, `nt`, `bcrypt`, `pbkdf2`, `zip`, `office`, `pdf`

---

## ⚠️ Notes

- John stores session progress in `.john/` by default.
- Use `--fork=N` to parallelize across N cores.
- If unsure of hash type, use `--format=auto` (in jumbo build).

---

## 🌐 SploitHQ Cracking Toolkit

👉 [Visit the John the Ripper Tool Page](https://sploithq.com/john-the-ripper)

- Learn cracking workflow with examples
- Use hash extraction tools
- Compare with Hashcat for multi-hash recovery

---

## 🔗 Useful Links

- [John the Ripper GitHub](https://github.com/openwall/john)
- [Hash Format Documentation](https://openwall.info/wiki/john)
- [SploitHQ John the Ripper Guide](https://sploithq.com/john-the-ripper)

---

## 📄 License

John the Ripper is free and open-source software under the GNU Public License.  
This guide is maintained by [SploitHQ](https://sploithq.com) for educational and authorized security testing only.
