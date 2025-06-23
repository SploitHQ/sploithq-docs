# Brute Force – Credential Cracking and Authentication Testing Tools

Brute-force tools are used in penetration testing to automate password guessing across network services, APIs, and login portals. They are essential for assessing the strength of authentication mechanisms, password policies, and exposed services.

🔗 [Explore the Brute Force Toolkit on SploitHQ](https://sploithq.com/brute-force)

---

## 🔍 What Can Brute-Force Tools Do?

- Automate login attempts with large wordlists
- Target protocols like SSH, FTP, RDP, SMB, HTTP, MySQL, and more
- Perform dictionary, hybrid, or credential spraying attacks
- Validate password reuse across hosts or services
- Test web logins and custom forms

---

## 🧰 Common Tools

| Tool            | Description                                                               |
|------------------|---------------------------------------------------------------------------|
| **Hydra**        | Versatile login cracker supporting over 50 protocols                      |
| **Medusa**       | Fast, parallel brute-forcer for remote authentication services            |
| **Ncrack**       | Network authentication cracker by Nmap team, focused on performance       |
| **Patator**      | Modular brute-force and testing tool for many protocols and services      |
| **Crowbar**      | Uses SSH private keys, RDP, OpenVPN brute-force with known credentials    |
| **CrackMapExec** | Swiss army knife for Windows environments (SMB, Kerberos, etc.)           |
| **Kerbrute**     | Brute-force and enumerate valid AD/Kerberos usernames via AS-REQ          |
| **JWT Tool**     | Brute-force JWT secrets and manipulate token content                      |

---

## ⚙️ Examples

### 🔓 Hydra SSH Brute-Force
```bash
hydra -L users.txt -P passwords.txt ssh://10.0.0.5
```

### 🔓 Medusa HTTP Form
```bash
medusa -h target.com -u admin -P rockyou.txt -M http
```

### 🔓 Patator FTP Bruteforce
```bash
patator ftp_login host=ftp.target.com user=FILE:users.txt password=FILE:pass.txt -x ignore:mesg='Login incorrect'
```

### 🔓 CrackMapExec SMB Password Spray
```bash
crackmapexec smb 192.168.1.0/24 -u user.txt -p pass.txt
```

### 🔓 Kerbrute Username Enumeration
```bash
kerbrute userenum -d target.local usernames.txt --dc 10.0.0.1
```

### 🔓 JWT Tool Secret Brute-Force
```bash
jwt_tool token.jwt -C -d wordlist.txt
```

---

## ⚠️ Legal and Ethical Use

- Only use brute-force tools on systems you own or are authorized to test.
- Excessive login attempts may trigger alerts or account lockouts.
- Always test safely and respect scope boundaries in engagements.

---

## 🌐 SploitHQ Brute Force Toolkit

👉 [Use the Brute Force Command Generators](https://sploithq.com/brute-force)

- Generate commands for Hydra, Patator, and Kerbrute
- Select protocol, host, and wordlists via form
- Copy output instantly for CLI use

---

## 🔗 Useful Links

- [Hydra GitHub](https://github.com/vanhauser-thc/thc-hydra)
- [Patator GitHub](https://github.com/lanjelot/patator)
- [Kerbrute GitHub](https://github.com/ropnop/kerbrute)
- [SploitHQ Brute Force Tools](https://sploithq.com/brute-force)

---

## 📄 License

These tools are open-source and used in professional security testing.  
This documentation is maintained by [SploitHQ](https://sploithq.com) for ethical hacking, red teaming, and training.
