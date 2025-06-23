# Hashing – Cryptographic Hash Functions and Tools

Hashing is the process of transforming input data into a fixed-size string of characters using mathematical algorithms. Hash functions are widely used in security for verifying data integrity, storing passwords, and detecting tampering.

🔗 [Use the Hashing Tool on SploitHQ](https://sploithq.com/hashing)

---

## 🔍 What Can Hashing Do?

- Verify file or message integrity (e.g., downloads, backups)
- Store passwords securely (e.g., bcrypt)
- Create digital signatures and HMACs
- Identify unique data blocks or content
- Detect file or configuration changes

---

## ⚙️ Supported Hash Algorithms

| Algorithm     | Output Length | Common Use Cases                                |
|---------------|----------------|-------------------------------------------------|
| **MD5**       | 128 bits       | Checksums, basic integrity (insecure for crypto)|
| **SHA-1**     | 160 bits       | Deprecated cryptographic use; legacy systems    |
| **SHA-256**   | 256 bits       | General-purpose cryptographic hashing           |
| **SHA-384**   | 384 bits       | Stronger variant of SHA-2                       |
| **SHA-512**   | 512 bits       | High-security applications and large files      |
| **RIPEMD-160**| 160 bits       | Less common alternative to SHA-1                |
| **bcrypt**    | Variable (60+) | Secure password hashing with salting & stretching|

---

## 🧰 Example Hash Commands

### 🔐 Hash a string

**MD5:**
```bash
echo -n "password123" | md5sum
```

**SHA-256:**
```bash
echo -n "password123" | sha256sum
```

**RIPEMD-160:**
```bash
echo -n "password123" | openssl dgst -ripemd160
```

---

### 🔐 Hash a file

**SHA-512:**
```bash
sha512sum file.txt
```

**SHA-1 with OpenSSL:**
```bash
openssl dgst -sha1 file.txt
```

---

### 🔐 bcrypt a password (via `htpasswd` or Python)

**Using htpasswd:**
```bash
htpasswd -nbB user password123
```

**Using Python:**
```python
import bcrypt
bcrypt.hashpw(b"password123", bcrypt.gensalt())
```

---

## ⚠️ Security Notes

- **MD5** and **SHA-1** are broken for cryptographic use — avoid using them for passwords or secure validation.
- Use **bcrypt** for password hashing due to built-in salting and slow computation (resists brute force).
- **SHA-256+** are still strong for general use, like file integrity and digital signatures.

---

## 🌐 SploitHQ Hashing Toolkit

👉 [Try the Online Hash Generator](https://sploithq.com/hashing)

- Hash any input with MD5, SHA, RIPEMD, or bcrypt
- Compare hash outputs in real time
- Generate hashes for files, passwords, or CTFs

---

## 🔗 Useful Links

- [SHA Man Pages (die.net)](https://linux.die.net/man/1/sha256sum)
- [bcrypt Python Docs](https://pypi.org/project/bcrypt/)
- [SploitHQ Hashing Tool](https://sploithq.com/hashing)

---

## 📄 License

Hashing algorithms are part of open standards and GNU/Linux core utilities.  
This page is curated by [SploitHQ](https://sploithq.com) for secure password storage, file validation, and cryptographic operations.
