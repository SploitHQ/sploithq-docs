# httpie (HTTP Client for Humans)

`httpie` is a modern command-line HTTP client for sending requests and viewing responses in a readable, colorized format. It's a user-friendly alternative to `curl` and is ideal for interacting with web services and REST APIs.

🔗 [Use the HTTP Proxy/Request Command Generator on SploitHQ](https://sploithq.com/proxy)

---

## 🔍 What can httpie do?

- Send HTTP requests (GET, POST, PUT, DELETE, etc.) with simple syntax
- Format and colorize responses automatically for readability
- Add headers, authentication, JSON payloads, and query parameters easily
- Work with HTTP and HTTPS APIs quickly from the terminal
- Support proxies, file uploads, and session persistence

---

## ⚙️ Basic Usage

```
http GET https://example.com
```

This sends a GET request to the given URL and displays a formatted response.

---

## 🧰 Commonly Used Options

| Option                      | Description                                                        |
|-----------------------------|--------------------------------------------------------------------|
| `GET|POST|PUT|DELETE`       | HTTP method to use                                                 |
| `URL`                       | Target endpoint                                                    |
| `key=value`                 | Form data (default: sends as JSON if `Content-Type` is `application/json`) |
| `-f`                        | Send form-encoded data (`application/x-www-form-urlencoded`)       |
| `-a user:pass`              | Use basic authentication                                           |
| `-H "Header: Value"`        | Set custom headers                                                 |
| `--json`                    | Force JSON content-type                                            |
| `--form`                    | Force form data                                                    |
| `--proxy=http:http://ip:port` | Route the request through an HTTP proxy                         |
| `--download`                | Download and save the response body                               |
| `--ignore-stdin`            | Prevent accidental sending of stdin data                          |
| `--session=my-session`      | Save and reuse session cookies                                     |

---

## 🧪 Examples

### GET request to view a webpage
```
http GET https://example.com
```

### POST form data
```
http --form POST https://example.com/login username=admin password=1234
```

### Add custom headers
```
http GET https://example.com/api Authorization:'Bearer token123'
```

### Use a proxy
```
http --proxy=http:http://127.0.0.1:8080 https://example.com
```

### Save the response to a file
```
http --download GET https://example.com/file.zip
```

### Use basic auth
```
http -a admin:password GET https://example.com/secure
```

---

## 🌐 Live Proxy & HTTP Command Generator

Need to test proxies, headers, or requests from your browser?

👉 [Try the HTTP/Proxy Command Generator on SploitHQ](https://sploithq.com/proxy)

- Choose method, headers, data, authentication, and proxy settings
- Instantly generate the full `httpie` command
- Great for API testing and web reconnaissance

---

## 🔗 Useful Links

- [httpie Official Website](https://httpie.io/)
- [httpie GitHub Repository](https://github.com/httpie/httpie)
- [SploitHQ Proxy & HTTP Generator](https://sploithq.com/proxy)
- [httpie man page (die.net)](https://linux.die.net/man/1/http)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the httpie project.

`httpie` is open-source and distributed under the [BSD License](https://github.com/httpie/httpie/blob/master/LICENSE).
