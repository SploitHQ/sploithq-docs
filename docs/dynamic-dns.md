# Dynamic DNS Updates with nsupdate

`nsupdate` is a command-line tool used to submit Dynamic DNS (DDNS) update requests to a DNS server that supports RFC 2136. It allows adding, modifying, or deleting DNS records in real time — often used for dynamic IP environments, automation, or internal infrastructure management.

🔗 [Use the nsupdate Command Generator on SploitHQ](https://sploithq.com/dynamic-dns)

---

## 🔍 What can nsupdate do?

- Add or remove A, AAAA, PTR, TXT, and other DNS records
- Authenticate updates using TSIG keys
- Interact directly with authoritative DNS servers
- Script updates for DHCP, VPN, or automation workflows

---

## ⚙️ Basic Usage

`nsupdate` reads commands from a file or standard input. Here's a simple interactive session to update a record:

```
nsupdate
> server dns.example.com
> zone example.com
> update delete test.example.com A
> update add test.example.com 300 A 192.0.2.123
> send
```
*
---

## 🧰 Commonly Used Directives

| Directive              | Description                                           |
|------------------------|-------------------------------------------------------|
| `server <ip|hostname>` | Set the target DNS server                             |
| `zone <zone>`          | Define the DNS zone being updated                     |
| `update add`           | Add a DNS record with TTL and data                    |
| `update delete`        | Delete a specific record (or all records for a name)  |
| `send`                 | Submit the changes to the server                      |
| `key <name> <secret>`  | Use a TSIG key for authentication                     |

---

## 🧪 Examples

### Add a new A record
```
server dns.example.com
zone example.com
update add dev.example.com 3600 A 192.0.2.55
send
```

### Delete an existing record
```
server dns.example.com
zone example.com
update delete oldhost.example.com A
send
```

### Authenticate with a TSIG key
```
server dns.example.com
zone example.com
key ddns-key hmac-sha256:Abc123Base64Secret==
update add secure.example.com 300 A 192.0.2.99
send
```

### Batch file usage
Create a file named `ddns.txt`:
```
server dns.example.com
zone example.com
update add newhost.example.com 600 A 192.0.2.42
send
```
Then run:
```
nsupdate ddns.txt
```

---

## 🌐 Live nsupdate Command Generator

Want to build DDNS update scripts in your browser?

👉 [Try the Dynamic DNS Command Generator on SploitHQ](https://sploithq.com/dynamic-dns)

- Add/delete A, AAAA, PTR, or TXT records
- Specify server, zone, TTL, and TSIG keys
- Copy complete scripts instantly

---

## 🔗 Useful Links

- [nsupdate man page](https://linux.die.net/man/8/nsupdate)
- [Dynamic DNS Generator on SploitHQ](https://sploithq.com/dynamic-dns)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with ISC or the BIND project.

`nsupdate` is part of the BIND suite and is licensed under the Mozilla Public License 2.0.
