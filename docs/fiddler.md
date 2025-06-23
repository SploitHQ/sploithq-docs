# Fiddler Web Debugging Proxy

**Fiddler** is a free web debugging proxy tool used to capture, inspect, and modify HTTP/HTTPS traffic between your computer and the internet. It is commonly used by developers, penetration testers, and reverse engineers to analyze browser and app traffic.

🔗 [Download Fiddler](https://www.telerik.com/fiddler)

---

## 🔍 What Can Fiddler Do?

- Capture all HTTP/HTTPS traffic from browsers or apps
- Inspect and modify requests/responses in real time
- Decrypt HTTPS traffic with SSL/TLS certificate interception
- Replay requests and simulate different user agents or headers
- Debug APIs, web apps, mobile traffic, and proxy behavior
- Supports scripting with FiddlerScript and extensions

---

## ⚙️ Basic Usage

### Install and Run:
- Download Fiddler from the official site
- Install on Windows or macOS
- Open the tool to start capturing traffic
- Configure applications or browsers to use Fiddler as a proxy (default: `127.0.0.1:8888`)

---

## 🧰 Key Features

| Feature                  | Description                                                   |
|--------------------------|---------------------------------------------------------------|
| **Inspectors**           | View request/response headers, bodies, cookies, and sessions |
| **Composer**             | Manually craft HTTP requests and test server responses        |
| **AutoResponder**        | Mock responses for specific URLs or paths                     |
| **HTTPS Decryption**     | Intercept and decrypt HTTPS traffic using a local cert        |
| **Filters**              | Show only selected hosts, methods, or content types           |
| **FiddlerScript**        | Customize traffic manipulation via JScript.NET                |

---

## 🧪 Common Use Cases

### Debug Web Traffic
- See exactly what a browser or app sends to a server
- Identify authentication issues, cookies, headers, redirects

### Penetration Testing
- Analyze API traffic for sensitive data
- Test for improper session handling, insecure cookies, etc.

### Mobile App Testing
- Route mobile device traffic through Fiddler (set device proxy)
- Inspect how mobile apps communicate over the network

### Replay or Modify Requests
- Use the Composer or AutoResponder to test various payloads
- Simulate responses from test environments

---

## ⚠️ Notes

- Fiddler installs a local root certificate to decrypt HTTPS traffic; this may trigger warnings.
- Be cautious when decrypting traffic—never install the Fiddler root certificate on a production system or someone else’s device without consent.
- Not suitable for stealthy or large-scale automated capture.

---

## 🛠 Related Tools

- **Burp Suite** – Advanced interception proxy with scanner and repeater
- **mitmproxy** – Terminal-based alternative for scripting and automation
- **Wireshark** – Packet-level capture and analysis

---

## 🔗 Useful Links

- [Fiddler Official Site](https://www.telerik.com/fiddler)
- [Fiddler Documentation](https://docs.telerik.com/fiddler)
- [Installing Fiddler Certificates](https://docs.telerik.com/fiddler/Configure-Fiddler/Tasks/TrustCA)
- [SploitHQ Fiddler Tool](https://sploithq.com/fiddler)

---

## 📄 License

Fiddler is a proprietary tool developed by Telerik (Progress Software). It is free for personal and educational use.

This page is maintained by [SploitHQ](https://sploithq.com) for reference and educational purposes.
