# OpenSSL – TLS/SSL Client and Certificate Testing

**OpenSSL** is a robust, full-featured toolkit for SSL/TLS and cryptography. While it supports many crypto functions, it’s also widely used to test HTTPS connections, view certificate chains, validate trust, and debug handshakes using `openssl s_client`.

🔗 Related SploitHQ Pages:  
- 🔍 [Certificate Transparency Monitoring](https://sploithq.com/certificate-transparency-monitoring)  
- ✅ [Certificate Validation](https://sploithq.com/certificate-validation)  
- 🔐 [Version & Cipher Suite Checks](https://sploithq.com/version-and-cipher-suite-checks)  
- 🤝 [TLS Handshake & Protocol Analysis](https://sploithq.com/handshake-and-protocol-analysis)

---

## 🔍 What Can `openssl s_client` Do?

- Test SSL/TLS connections to servers
- Display full certificate chains
- Show supported TLS versions and ciphers
- Validate trust chains using system CA store or custom CA
- Debug TLS handshakes and protocol behaviors
- Simulate client connections for security testing

---

## ⚙️ Basic Usage

```bash
openssl s_client -connect example.com:443
```

This performs a basic TLS connection to `example.com` on port 443.

---

## 🧰 Commonly Used Options

| Option                             | Description                                                        |
|------------------------------------|--------------------------------------------------------------------|
| `-connect <host:port>`             | Target server and port (e.g. `example.com:443`)                    |
| `-servername <host>`               | Enable SNI (Server Name Indication) for virtual hosts             |
| `-showcerts`                       | Show all certs in the server chain                                |
| `-CAfile <file>`                   | Use a custom CA bundle to verify trust                            |
| `-verify <depth>`                  | Attempt certificate validation with optional depth                |
| `-tls1_2`, `-tls1_3`, etc.         | Force a specific TLS version                                      |
| `-cipher <list>`                   | Restrict to a specific list of ciphers                            |
| `-brief`                           | Minimal output (OpenSSL 3.x)                                      |
| `-prexit`                          | Show session data before quitting                                 |

---

## 🧪 Examples

### Basic Connection Test
```bash
openssl s_client -connect target.com:443
```

### Show Full Certificate Chain
```bash
openssl s_client -connect target.com:443 -showcerts
```

### Validate Server Certificate with a Custom CA
```bash
openssl s_client -connect target.com:443 -CAfile my-ca.pem -verify 5
```

### Force TLS 1.2 and Limit Ciphers
```bash
openssl s_client -connect target.com:443 -tls1_2 -cipher 'HIGH:!aNULL:!MD5'
```

### Debug Handshake with SNI
```bash
openssl s_client -connect target.com:443 -servername target.com
```

---

## ⚠️ Notes

- Output includes session info, TLS version, selected cipher, and peer certificates.
- Use `-quiet` or `-brief` in scripts to suppress verbose output.
- Combine with tools like `grep` or `jq` for automated certificate checks.

---

## 🌐 SploitHQ Pages for OpenSSL Use Cases

- 🧾 **[Certificate Transparency Monitoring](https://sploithq.com/certificate-transparency-monitoring)**  
  Check for unexpected certificates issued for a domain.

- ✅ **[Certificate Validation](https://sploithq.com/certificate-validation)**  
  Verify full trust chains, expiration, and intermediate trust.

- 🔐 **[Version & Cipher Suite Checks](https://sploithq.com/version-and-cipher-suite-checks)**  
  Audit which TLS versions and ciphers a server supports or accepts.

- 🤝 **[Handshake & Protocol Analysis](https://sploithq.com/handshake-and-protocol-analysis)**  
  Troubleshoot issues in TLS negotiation or debug protocol mismatches.

---

## 🔗 Useful Links

- [OpenSSL Official Site](https://www.openssl.org/)
- [OpenSSL `s_client` Man Page (die.net)](https://linux.die.net/man/1/openssl)
- [SploitHQ OpenSSL Tools](https://sploithq.com/certificate-validation)
- 
---

## 📄 License

OpenSSL is open-source software licensed under the [Apache License 2.0](https://www.openssl.org/source/license.html).

This page is maintained by [SploitHQ](https://sploithq.com) for educational and security testing use.
