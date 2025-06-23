# idn – Convert Internationalized Domain Names (IDN)

**idn** is a command-line utility used to encode and decode Internationalized Domain Names (IDNs) between Unicode and ASCII-compatible encoding (ACE), commonly known as **Punycode**. This is useful for dealing with domain names that contain non-ASCII characters, such as those using accented letters or scripts like Arabic, Chinese, or Cyrillic.

🔗 [Use the IDN Converter on SploitHQ](https://sploithq.com/idn)

---

## 🔍 What Can idn Do?

- Convert Unicode domain names to Punycode (ACE)
- Decode Punycode back to human-readable Unicode
- Validate and normalize internationalized domain names
- Help detect phishing attempts using lookalike characters

---

## ⚙️ Basic Usage

### Encode Unicode to Punycode:
```bash
idn café.com
```

Output:
```
xn--caf-dma.com
```

### Decode Punycode to Unicode:
```bash
idn --idna-to-unicode xn--caf-dma.com
```

Output:
```
café.com
```

---

## 🧰 Common Options

| Option                | Description                                               |
|-----------------------|-----------------------------------------------------------|
| `--idna-to-ascii`     | Convert Unicode to ASCII (Punycode) — default behavior     |
| `--idna-to-unicode`   | Convert Punycode to Unicode                               |
| `--quiet`             | Suppress warnings and errors                              |
| `--verbose`           | Show detailed output and steps                            |
| `--version`           | Show version info                                         |

---

## 🧪 Examples

### Encode multiple IDNs:
```bash
idn münchen.de 東京.jp
```

Output:
```
xn--mnchen-3ya.de
xn--1lqs71d.jp
```

### Decode multiple Punycode domains:
```bash
idn --idna-to-unicode xn--mnchen-3ya.de xn--1lqs71d.jp
```

Output:
```
münchen.de
東京.jp
```

---

## ⚠️ Security Notes

- **Punycode phishing**: Attackers may register domains like `аррӏе.com` (Cyrillic) that look similar to `apple.com`. Always decode suspicious domains.
- Always use IDN conversion when parsing user-supplied URLs in scripts or apps.

---

## 🌐 SploitHQ IDN Converter

👉 [Try the Online IDN Tool](https://sploithq.com/idn)

- Instantly encode Unicode to Punycode
- Decode and verify suspicious domain names
- Great for OSINT, bug bounty, and phishing investigations

---

## 🔗 Useful Links

- [idn Man Page (die.net)](https://linux.die.net/man/1/idn)
- [What is Punycode? (ICANN)](https://www.icann.org/resources/pages/punycode-2013-05-03-en)
- [SploitHQ IDN Tools](https://sploithq.com/idn)

---

## 📄 License

The `idn` tool is part of the GNU `libidn` package.  
This documentation is maintained by [SploitHQ](https://sploithq.com) for use in security, scripting, and domain analysis.
