# Nessus Vulnerability Scanner

**Nessus** is a professional-grade vulnerability assessment tool developed by Tenable. It scans networks, systems, and applications for known vulnerabilities, misconfigurations, and compliance issues.

🔗 [Visit the Nessus Page on SploitHQ](https://sploithq.com/nessus)

---

## 🔍 What Can Nessus Do?

- Detect vulnerabilities in operating systems, services, and applications
- Identify missing patches, default credentials, and weak configurations
- Scan for malware, backdoors, and sensitive data
- Generate detailed compliance and audit reports
- Perform authenticated and unauthenticated scans
- Integrate with Tenable.io or operate standalone

---

## ⚙️ Basic Usage

Nessus is typically managed via a web interface, but scanning tasks follow this general workflow:

1. **Install Nessus**
2. **Start Nessus service**
3. **Access web UI** (`https://localhost:8834`)
4. **Create a scan**
5. **Select target(s)**
6. **Review and launch scan**
7. **Analyze results**

You can also use **Nessus CLI** for automated workflows.

---

## 🧰 Common CLI Options (Nessus Professional / Agent)

| Command / Option             | Description                                               |
|------------------------------|-----------------------------------------------------------|
| `nessuscli`                  | Main command-line interface                               |
| `nessuscli fetch --register`| Register your Nessus installation                         |
| `nessuscli update`          | Update plugins manually                                   |
| `nessuscli agent`           | Manage local scan agents                                  |
| `nessuscli fix --reset`     | Reset Nessus configuration                                |
| `nessuscli import`          | Import a scan policy or report                            |
| `nessuscli report`          | Convert/export scan results (e.g. to HTML, CSV, etc.)     |

---

## 🧪 Common Use Cases

### Scan a Single Host
- Quick assessment of a server or endpoint
- Choose a "Basic Network Scan" template in the UI

### Authenticated Scan
- Detect deeper vulnerabilities by providing credentials
- Configure SSH, SMB, or domain credentials in the scan settings

### Scheduled Scans
- Automate daily or weekly scans of internal networks
- View historical results and trends

### Export Vulnerability Reports
- Export to CSV, HTML, or PDF
- Filter by severity or plugin ID

---

## ⚠️ Notes

- Nessus requires registration to operate. A free Essentials version is available with limited features.
- Vulnerability checks rely on frequently updated plugin feeds.
- Ensure targets are authorized before scanning — Nessus can cause system instability on fragile devices.

---

## 🌐 Nessus on SploitHQ

Generate deployment commands, CLI usage, and tips:

👉 [Use the Nessus Tool Page on SploitHQ](https://sploithq.com/nessus)

- Setup instructions for Linux, Windows, and macOS
- CLI reference and automation guidance
- Example scan templates and output reports

---

## 🔗 Useful Links

- [Nessus Official Site](https://www.tenable.com/products/nessus)
- [Nessus Essentials (Free)](https://www.tenable.com/products/nessus/nessus-essentials)
- [Nessus CLI Reference](https://docs.tenable.com/nessus/Content/NessusCLI.htm)
- [SploitHQ Nessus Tool](https://sploithq.com/nessus)

---

## 📄 License

Nessus is proprietary software developed by Tenable, Inc.

This documentation is provided by [SploitHQ](https://sploithq.com) for educational and operational reference only.
