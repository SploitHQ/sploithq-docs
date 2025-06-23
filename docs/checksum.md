# Checksum Tools (md5sum, sha256sum, certutil)

Checksum tools help verify file integrity by generating and comparing cryptographic hashes. They're commonly used to validate downloads, detect tampering, and ensure consistency across systems.

🔗 [Use the Checksum Command Generator on SploitHQ](https://sploithq.com/checksum)

---

## 🔍 What Can These Tools Do?

- Generate MD5 and SHA256 checksums for any file
- Compare calculated checksums with known good values
- Detect corruption, tampering, or mismatches
- Run on Linux, macOS (`md5sum`, `sha256sum`) and Windows (`certutil`)

---

## ⚙️ Linux/macOS Usage

### Generate MD5 Hash
```bash
md5sum file.txt
```

### Generate SHA256 Hash
```bash
sha256sum file.txt
```

### Compare with a known hash
```bash
echo "d41d8cd98f00b204e9800998ecf8427e  file.txt" | md5sum -c -
```

---

## ⚙️ Windows Usage (certutil)

### Generate MD5 Hash
```cmd
certutil -hashfile file.txt MD5
```

### Generate SHA256 Hash
```cmd
certutil -hashfile file.txt SHA256
```

---

## 🧪 Examples

### Linux: Check file against expected SHA256 hash
```bash
echo "9e107d9d372bb6826bd81d3542a419d6e0e2c89f735bdc95bfb3538b3a739790  file.iso" | sha256sum -c -
```

### Windows: Generate SHA256 hash for executable
```cmd
certutil -hashfile setup.exe SHA256
```

### Output example:
```
SHA256 hash of setup.exe:
3A 7E 95 3C 6B 15 ... C9 C4 79 44
CertUtil: -hashfile command completed successfully.
```

---

## ⚠️ Notes

- `md5sum` is fast but weak; avoid for cryptographic purposes.
- `sha256sum` is more secure and widely recommended.
- `certutil` is built into Windows — no need to install third-party tools.
- You can also use tools like `shasum -a 256 file.txt` on macOS.

---

## 🌐 Live Command Generator

Want to check or verify a hash?

👉 [Use the Checksum Command Generator on SploitHQ](https://sploithq.com/checksum)

- Choose hash type (MD5, SHA256)
- Generate commands for Linux or Windows
- Copy and paste with confidence

---

## 🔗 Useful Links

- [md5sum Man Page (die.net)](https://linux.die.net/man/1/md5sum)
- [sha256sum Man Page (die.net)](https://linux.die.net/man/1/sha256su)
