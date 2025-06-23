# wget

**wget** is a non-interactive command-line tool for downloading files from the web via HTTP, HTTPS, and FTP. It supports recursive downloading, file mirroring, user authentication, and proxy tunneling, making it a favorite tool for scripting and automation.

🔗 [Use the wget Command Generator on SploitHQ](https://sploithq.com/wget)

---

## 🔍 What can wget do?

- Download files and entire websites
- Resume interrupted downloads
- Mirror sites recursively with timestamp checking
- Authenticate with HTTP or FTP credentials
- Work behind proxies and firewalls
- Limit download speed and retry logic for stability

---

## ⚙️ Basic Usage

### Download a single file
```
wget https://example.com/file.zip
```

This downloads `file.zip` to the current directory.

---

## 🧰 Commonly Used Options

| Option                  | Description                                                       |
|--------------------------|-------------------------------------------------------------------|
| `-O <file>`              | Save download with a specific filename                           |
| `-c`                     | Continue a partial download                                      |
| `-r`                     | Download recursively (for websites and directories)              |
| `--no-parent`            | Don’t ascend to parent directories when downloading recursively  |
| `-np`                    | Alias for `--no-parent`                                          |
| `-l <depth>`             | Set maximum recursion depth                                      |
| `--limit-rate=<rate>`    | Limit download speed (e.g., `--limit-rate=500k`)                 |
| `--user=<name>`          | Set username for authentication                                  |
| `--password=<pass>`      | Set password for authentication                                  |
| `-e robots=off`          | Ignore `robots.txt` restrictions                                 |
| `--mirror`               | Shortcut for `-r -N -l inf --no-remove-listing` (mirror a site)  |
| `--no-check-certificate` | Ignore SSL certificate errors                                    |

---

## 🧪 Examples

### Save to a custom filename
```
wget -O myfile.zip https://example.com/file.zip
```

### Resume a broken download
```
wget -c https://example.com/largefile.iso
```

### Recursively download a website
```
wget -r -l 3 --no-parent https://example.com/docs/
```

### Download a file behind basic authentication
```
wget --user=username --password=secret https://example.com/protected/file.txt
```

### Mirror an entire website
```
wget --mirror -p --convert-links -P ./mirror https://example.com
```

---

## 🌐 Live Command Generator

Want to generate a custom `wget` command?

👉 [Use the wget Command Generator on SploitHQ](https://sploithq.com/wget)

- Add options like output file, recursive depth, or credentials
- Instantly copy your command to the clipboard
- Great for scripting or penetration testing automation

---

## 🔗 Useful Links

- [wget GNU Official Docs](https://www.gnu.org/software/wget/)
- [wget GitHub Mirror](https://github.com/mirror/wget)
- [wget Man Page (die.net)](https://linux.die.net/man/1/wget)
- [wget Generator on SploitHQ](https://sploithq.com/wget)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the GNU wget project.

`wget` is free software, licensed under the [GNU General Public License v3](https://www.gnu.org/licenses/gpl-3.0.html).
