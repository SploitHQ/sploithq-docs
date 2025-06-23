# assetfinder

`assetfinder` is a simple command-line tool for discovering assets related to a given domain. It can help identify subdomains, linked services, and domains related to your target, which is useful for reconnaissance and mapping out an organization's digital footprint.

🔗 [Use the assetfinder Command Generator on SploitHQ](https://sploithq.com/assetfinder)

---

## 🔍 What can assetfinder do?

- Discover subdomains related to a target domain
- Search across a wide range of public sources
- Quickly map out domains and associated assets
- Useful for OSINT and external reconnaissance

---

## ⚙️ Basic Usage

```
assetfinder example.com
```

This command will search for subdomains associated with `example.com`.

---

## 🧰 Commonly Used Options

| Option                 | Description                                                       |
|------------------------|-------------------------------------------------------------------|
| `assetfinder <domain>` | Discover subdomains for the given domain                          |
| `-subs`                | Show all subdomains found for the domain                           |
| `-o <file>`            | Save output to a file                                             |
| `-include`             | Include additional sources for subdomain discovery                |
| `-exclude`             | Exclude certain sources during subdomain discovery                |
| `-silent`              | Run the tool without printing output (useful for automation)      |

---

## 🧪 Examples

### Discover subdomains for a domain
```
assetfinder example.com
```

### Save results to a file
```
assetfinder example.com -o subdomains.txt
```

### Include additional sources in the search
```
assetfinder example.com -include hackertarget
```

### Exclude specific sources
```
assetfinder example.com -exclude virustotal
```

---

## 🌐 Live assetfinder Command Generator

Want to generate an `assetfinder` command quickly?

👉 [Try the assetfinder Command Generator on SploitHQ](https://sploithq.com/assetfinder)

- Select your sources and options
- Quickly get the command ready for copy-paste
- Save results to a file or view them in the terminal

---

## 🔗 Useful Links

- [assetfinder GitHub Repository](https://github.com/tomnomnom/assetfinder)
- [assetfinder Generator on SploitHQ](https://sploithq.com/assetfinder)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the assetfinder project.

`assetfinder` is open-source and distributed under the [MIT License](https://opensource.org/licenses/MIT).
