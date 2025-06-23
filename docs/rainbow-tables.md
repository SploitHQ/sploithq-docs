# Rainbow Tables – Hash Cracking with rtgen and rcracki_mt

**Rainbow tables** are precomputed lookup tables used to reverse cryptographic hash functions, significantly speeding up the cracking process. They are especially effective against unsalted hashes and commonly used passwords.

🔗 [Explore Rainbow Table Tools on SploitHQ](https://sploithq.com/rainbow-tables)

---

## 🔍 What Are Rainbow Tables?

- **Precomputed hash chains** that reduce cracking time
- Work by reversing hashes to plaintext using time-memory tradeoff
- Ineffective against salted hashes or very complex passwords
- Useful in forensic recovery, red teaming, or academic research

---

## ⚙️ Key Tools

| Tool          | Description                                             |
|---------------|---------------------------------------------------------|
| `rtgen`       | Generates rainbow tables using hash algorithm & charset |
| `rcracki_mt`  | Cracks hashes using rainbow tables (multithreaded)      |

---

## 🧰 rtgen – Generate Rainbow Tables

```bash
rtgen <hash_alg> <charset> <min_len> <max_len> <table_index> <chain_len> <chain_count> <part_index>
```

### Example: Generate NTLM tables for 6-character lowercase
```bash
rtgen ntlm loweralpha 6 6 0 2400 4000000 0
```

Then sort the table:
```bash
rtsort .
```

---

## 🧰 rcracki_mt – Crack Using Rainbow Tables

```bash
rcracki_mt <table_dir> -h <hash>
```

### Example: Crack an NTLM hash
```bash
rcracki_mt ./tables -h cd06ca7c7e10c99b1d33b7485a2ed808
```

Output:
```
Found plaintext: password
```

---

## 🔐 Hash Types Supported

- LM
- NTLM
- MD5
- SHA-1 (limited support)
- MySQL (old versions)

> ⚠️ Effectiveness depends on the quality and coverage of the tables.

---

## ⚠️ Notes

- Rainbow tables are large; storage can exceed hundreds of GB
- They are ineffective against **salted** hashes (e.g., bcrypt, sha512crypt)
- Always generate or download trusted, verified tables
- Prebuilt tables (e.g., from Project RainbowCrack) are available online

---

## 🌐 SploitHQ Rainbow Table Utilities

👉 [Use the Rainbow Table Tools on SploitHQ](https://sploithq.com/rainbow-tables)

- Learn how to generate or use rainbow tables
- Compare against known hashes
- View examples of rtgen and rcracki_mt in action

---

## 🔗 Useful Links

- [RainbowCrack GitHub](https://github.com/robertdavidgraham/rainbowcrack)
- [Rainbow Tables Explained (Wikipedia)](https://en.wikipedia.org/wiki/Rainbow_table)
- [SploitHQ Rainbow Tools](https://sploithq.com/rainbow-tables)

---

## 📄 License

These tools are open-source and used for educational and authorized testing only.  
This guide is provided by [SploitHQ](https://sploithq.com) to assist in password research and red team training.
