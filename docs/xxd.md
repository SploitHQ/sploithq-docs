# xxd – Hex Dump and Binary Viewer

**xxd** is a command-line utility that creates a hex dump of a given file or input. It can also convert a hex dump back into its original binary form. It’s useful for inspecting file contents, analyzing malware, editing binary data, and performing low-level data comparisons.

🔗 [Use the Binary Tools on SploitHQ](https://sploithq.com/binary)

---

## 🔍 What Can xxd Do?

- Generate hex + ASCII dumps of files or strings
- Reverse hex back into binary
- Display offsets for easier binary analysis
- Customize number of bytes per line or column format
- Useful for reverse engineering, exploit dev, and CTFs

---

## ⚙️ Basic Usage

### Hex dump of a file:
```bash
xxd file.bin
```

### Reverse hex back to binary:
```bash
xxd -r hex.txt output.bin
```

---

## 🧰 Common Options

| Option         | Description                                                    |
|----------------|----------------------------------------------------------------|
| `-r`           | Reverse operation: convert hex dump to binary                  |
| `-p`           | Plain continuous hex dump (no offsets or ASCII)                |
| `-c <n>`       | Format `<n>` bytes per line (default is 16)                    |
| `-l <length>`  | Limit output to `<length>` bytes                               |
| `-s <offset>`  | Start at `<offset>` into the file                              |
| `-g <n>`       | Group output bytes every `<n>` columns                         |

---

## 🧪 Examples

### View a file as hex:
```bash
xxd /bin/ls | head
```

### Hex dump a string using echo and a pipe:
```bash
echo "SploitHQ" | xxd
```

### Continuous hex only (no offsets/ASCII):
```bash
xxd -p file.bin
```

### Convert a hex stream back to binary:
```bash
xxd -r -p hex.txt > output.bin
```

### Dump 32 bytes from offset 64:
```bash
xxd -s 64 -l 32 file.bin
```

---

## ⚠️ Notes

- `xxd` is included by default on most Unix-like systems.
- Great for debugging shellcode, analyzing file headers, and encoding exploits.
- Combine with `grep`, `cut`, or `awk` for automation.

---

## 🌐 SploitHQ Binary Toolkit

👉 [Explore Binary Tools on SploitHQ](https://sploithq.com/binary)

- Analyze, decode, and convert hex/binary data
- Live preview hex dumps
- Paste binary or hex and auto-convert both ways

---

## 🔗 Useful Links

- [xxd Man Page (die.net)](https://linux.die.net/man/1/xxd)
- [HexEd.it – Online Hex Editor](https://hexed.it/)
- [SploitHQ Binary Tools](https://sploithq.com/binary)

---

## 📄 License

xxd is open-source and distributed with the Vim package.  
This page is maintained by [SploitHQ](https://sploithq.com) for binary analysis and offensive security use.
