# CeWL Wordlist Generator

CeWL is a Ruby-based command-line tool used by penetration testers to generate custom wordlists by spidering websites and scraping content. It can pull words, emails, and metadata, helping you build targeted password lists for use in tools like Hydra or John the Ripper.

🔗 [Use the CeWL Command Generator on SploitHQ](https://sploithq.com/cewl)

---

## 🔍 What can CeWL do?

CeWL can:
- Crawl a website up to a specified depth
- Collect words of a minimum length
- Output to standard output or a file
- Save results to a file for later use
- Optionally extract email addresses and document metadata
- Customize crawling depth, user agent, and output

---

## ⚙️ Basic Usage

cewl https://example.com

---

### **Common Options**

## 🧰 Commonly Used Options

| Option         | Description                                      |
|----------------|--------------------------------------------------|
| `-d <depth>`   | Set crawl depth (default is 2)                  |
| `-m <length>`  | Minimum word length to include (default is 6)   |
| `-w <file>`    | Output wordlist to a file                       |
| `--email`      | Extract email addresses                         |
| `--meta`       | Extract metadata (PDF, DOCX, etc.)              |
| `--ua <agent>` | Set custom User-Agent for crawling              |

---

## 🧪 Examples

### Basic spidering:
cewl https://target.com

### Increase Depth to 3:
cewl -d 3 https://target.com

### Output to a file:
cewl -w wordlist.txt https://target.com

### Extract metadata and emails
cewl --meta --email -w intel.txt https://target.com

### Use a custom user agent:
cewl --ua "Mozilla/5.0" https://target.com

---

### **Live Generator on SploitHQ**

## 🌐 Live CeWL Command Generator

Want to generate commands with a simple form?

👉 [Use the CeWL Command Generator on SploitHQ](https://sploithq.com/cewl)

- Select crawl depth, output file, metadata, etc.
- Instantly get the command and copy it
- Designed for pentesters and red teamers

## 📄 License

CeWL is distributed under the [GNU General Public License v2.0](https://github.com/digininja/CeWL/blob/master/LICENSE).

## 🔗 Useful Links

- [Official CeWL GitHub](https://github.com/digininja/CeWL)
- [CeWL Generator on SploitHQ](https://sploithq.com/cewl)
