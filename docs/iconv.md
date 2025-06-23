# iconv – Character Encoding Converter

**iconv** is a command-line utility for converting text files between different character encodings. It's essential for handling legacy code pages, fixing broken characters, or preparing payloads in the correct format for a target system.

🔗 [Use the Encoding Converter on SploitHQ](https://sploithq.com/code-page)

---

## 🔍 What Can iconv Do?

- Convert between encodings like UTF-8, ISO-8859-1, ASCII, CP1252, and more
- Repair broken characters due to mismatched encodings
- Help normalize text files for consistent display
- Prepare shellcode or exploits for specific platforms

---

## ⚙️ Basic Usage

### Convert from ISO-8859-1 to UTF-8:
```bash
iconv -f ISO-8859-1 -t UTF-8 input.txt -o output.txt
```

### Convert and overwrite the same file:
```bash
iconv -f WINDOWS-1252 -t UTF-8 input.txt > temp && mv temp input.txt
```

---

## 🧰 Common Options

| Option            | Description                                       |
|-------------------|---------------------------------------------------|
| `-f <from-enc>`   | Source encoding (e.g., `ISO-8859-1`, `UTF-16`)     |
| `-t <to-enc>`     | Target encoding (e.g., `UTF-8`, `ASCII//TRANSLIT`)|
| `-o <file>`       | Output file                                       |
| `--list`          | List all supported encodings                      |

---

## 🧪 Examples

### Convert a Windows-encoded file to Unix UTF-8
```bash
iconv -f CP1252 -t UTF-8 file.txt -o utf8.txt
```

### Convert a binary hex dump to ASCII
```bash
cat hex.txt | xxd -r -p | iconv -f UTF-16LE -t UTF-8
```

### Transliterate unsupported characters (if possible)
```bash
iconv -f UTF-8 -t ASCII//TRANSLIT input.txt -o ascii.txt
```

### View available encodings
```bash
iconv --list
```

---

## ⚠️ Notes

- Always double-check file encoding with `file` or `enca` before conversion.
- `ASCII//TRANSLIT` attempts to replace characters like `é` with `e`.
- May be required when dealing with payloads on legacy systems or non-English targets.

---

## 🌐 SploitHQ Encoding Toolkit

👉 [Try the Live Code Page Converter](https://sploithq.com/code-page)

- Detect and convert character encodings
- Fix garbled text from Windows/Linux mismatches
- Useful for reversing misencoded CTF payloads or logs

---

## 🔗 Useful Links

- [iconv Man Page (die.net)](https://linux.die.net/man/1/iconv)
- [Character Encoding Table (Wikipedia)](https://en.wikipedia.org/wiki/Character_encoding)
- [SploitHQ Code Page Tools](https://sploithq.com/code-page)

---

## 📄 License

iconv is part of the GNU `libiconv` package and is open-source.  
This page is maintained by [SploitHQ](https://sploithq.com) for use in character encoding, payload formatting, and exploit development.
