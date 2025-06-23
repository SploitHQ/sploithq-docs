# Hashcat – Advanced Password Cracking Tool

**Hashcat** is one of the fastest and most powerful password recovery tools available. It supports a wide variety of hashing algorithms and attack modes, making it a go-to tool for both penetration testers and forensic analysts.

🔗 [Use the Hashing Tools on SploitHQ](https://sploithq.com/hashing)

---

## 🔍 What Can Hashcat Do?

- Crack hashed passwords using dictionary, brute-force, and rule-based attacks
- Leverage CPU or GPU acceleration for high performance
- Support a wide range of hash types: MD5, SHA-1, NTLM, bcrypt, etc.
- Combine mask attacks, hybrid modes, and rule sets for deep coverage

---

## ⚙️ Basic Syntax

```bash
hashcat -m <hash-type> -a <attack-mode> <hashes.txt> <wordlist.txt>
```

---

## 🧰 Common Hash Types

| Hash Type    | Code |
|--------------|------|
| MD5          | 0    |
| SHA-1        | 100  |
| SHA-256      | 1400 |
| NTLM         | 1000 |
| bcrypt       | 3200 |
| SHA-512      | 1700 |
| WPA/WPA2     | 22000|

📌 Use `hashcat -h` or [Hashcat Hash Modes List](https://hashcat.net/wiki/doku.php?id=hashcat) for more.

---

## 🧪 Examples

### Dictionary attack on MD5 hashes
```bash
hashcat -m 0 -a 0 hashes.txt rockyou.txt
```

### Brute-force NTLM with 8-digit numbers
```bash
hashcat -m 1000 -a 3 hashes.txt ?d?d?d?d?d?d?d?d
```

### Hybrid attack: dictionary + 4 digits
```bash
hashcat -m 0 -a 6 hashes.txt rockyou.txt ?d?d?d?d
```

### Use GPU acceleration with optimized performance
```bash
hashcat -O -m 0 -a 0 hashes.txt wordlist.txt
```

---

## ⚠️ Notes

- Hashcat requires hash files to be cleaned: 1 hash per line, no extra characters.
- GPU drivers (e.g., NVIDIA CUDA) must be installed to enable hardware acceleration.
- Cracking speed depends heavily on hash type and hardware.

---

## 🌐 SploitHQ Hashing Toolkit

👉 [Use the Hashing Tool on SploitHQ](https://sploithq.com/hashing)

- Generate and inspect hashes
- Compare input/output across algorithms
- Learn command-line patterns for hash cracking

---

## 🔗 Useful Links

- [Hashcat Official Site](https://hashcat.net/hashcat/)
- [Hashcat Wiki](https://hashcat.net/wiki/)
- [Hashcat Hash Modes](https://hashcat.net/wiki/doku.php?id=hashcat)
- [SploitHQ Hashing Tools](https://sploithq.com/hashing)

---

## 📄 License

Hashcat is open-source and distributed under MIT.  
This page is maintained by [SploitHQ](https://sploithq.com) for educational and authorized testing use only.
