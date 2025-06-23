# dig for Email Security: DKIM, DMARC, and SPF

**dig** (Domain Information Groper) is a command-line tool used to query DNS records. It’s especially useful for inspecting email authentication mechanisms like **DKIM**, **DMARC**, and **SPF**, which help prevent spoofing and phishing.

🔗 Related SploitHQ Pages:  
- ✉️ [DKIM Lookup Tool](https://sploithq.com/dkim)  
- ✅ [DMARC Lookup Tool](https://sploithq.com/dmarc)  
- 🔍 [SPF Record Lookup](https://sploithq.com/spf)

---

## 🔍 What Can You Check with `dig`?

- **SPF (Sender Policy Framework)**: Determines which mail servers are allowed to send on behalf of a domain.
- **DKIM (DomainKeys Identified Mail)**: Uses a public key in DNS to verify that email headers weren’t tampered with.
- **DMARC (Domain-based Message Authentication, Reporting, and Conformance)**: Defines policy and reporting mechanisms for SPF/DKIM failures.

---

## ⚙️ Basic dig Syntax

```bash
dig <record> <domain> [@dns-server] +short
```

For email security records, you'll query TXT records (and CNAMEs for DKIM selectors).

---

## 🧰 Common Examples

### 🔍 SPF Record
```bash
dig txt example.com +short
```

Look for a TXT record starting with `v=spf1`.

### ✉️ DKIM Record
```bash
dig txt default._domainkey.example.com +short
```

Replace `default` with the actual DKIM selector. Use:

```bash
dig txt <selector>._domainkey.<domain> +short
```

Example:
```bash
dig txt google._domainkey.gmail.com +short
```

### ✅ DMARC Record
```bash
dig txt _dmarc.example.com +short
```

A valid record starts with `v=DMARC1`.

---

## 🛠 Tips for Usage

| Record Type | What to Look For                           | Example Record Fragment                  |
|-------------|---------------------------------------------|------------------------------------------|
| SPF         | `v=spf1` in TXT                             | `v=spf1 include:_spf.google.com ~all`    |
| DKIM        | Public key in TXT under `selector._domainkey` | `v=DKIM1; k=rsa; p=MIGfMA0G...`          |
| DMARC       | TXT at `_dmarc.example.com`                 | `v=DMARC1; p=reject; rua=mailto:...`     |

---

## 🌐 SploitHQ Pages for Email Lookups

- ✉️ **[DKIM Lookup](https://sploithq.com/dkim)**  
  Enter domain and selector to verify DKIM configuration.

- ✅ **[DMARC Lookup](https://sploithq.com/dmarc)**  
  See DMARC policy, reporting options, and alignment settings.

- 🔍 **[SPF Lookup](https://sploithq.com/spf)**  
  Confirm allowed senders and find common SPF misconfigurations.

---

## 🔗 Useful Links

- [dig Man Page (die.net)](https://linux.die.net/man/1/dig)
- [Google DKIM Setup Docs](https://support.google.com/a/answer/174124)
- [SPF Record Syntax](https://www.openspf.org/SPF_Record_Syntax)
- [SploitHQ Email DNS Tools](https://sploithq.com/tools)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) for educational and professional use. All DNS data shown is public and queryable using standard tools like `dig`, `host`, and `nslookup`.
