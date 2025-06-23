# curl

`curl` is a powerful command-line tool for transferring data using various network protocols. It supports HTTP, HTTPS, FTP, and many more. `curl` is commonly used for testing APIs, downloading files, and interacting with web services from the terminal.

🔗 [Use the curl Command Generator on SploitHQ](https://sploithq.com/curl)

---

## 🔍 What can curl do?

- Send HTTP requests (GET, POST, PUT, DELETE)
- Download files from the web
- Send custom headers, data, and cookies
- Follow redirects, handle authentication, and show detailed responses
- Interact with REST APIs and websites directly from the command line

---

## ⚙️ Basic Usage

```
curl https://example.com
```

This fetches the contents of the specified URL using a simple HTTP GET request.

---

## 🧰 Commonly Used Options

| Option                      | Description                                                       |
|-----------------------------|-------------------------------------------------------------------|
| `-X <method>`               | Specify HTTP request method (GET, POST, PUT, etc.)               |
| `-d <data>`                 | Send POST data in the request body                               |
| `-H "<header>"`             | Add custom headers to the request                                |
| `-o <file>`                 | Save the response output to a file                               |
| `-L`                        | Follow redirects automatically                                   |
| `-I`                        | Fetch only the headers (HEAD request)                           |
| `-u <user:pass>`            | Provide basic authentication credentials                         |
| `--cookie "<data>"`         | Send cookies with the request                                    |
| `-k`                        | Allow insecure SSL connections (skip cert validation)            |
| `--compressed`              | Request a compressed response                                    |
| `-s`                        | Silent mode (don’t show progress meter or errors)                |
| `-v`                        | Verbose mode (show request and response details)                 |

---

## 🧪 Examples

### Send a GET request
```
curl https://example.com
```

### Send a POST request with data
```
curl -X POST -d "username=admin&password=secret" https://example.com/login
```

### Add a custom header
```
curl -H "Authorization: Bearer TOKEN123" https://api.example.com/data
```

### Follow redirects and save output
```
curl -L -o page.html https://example.com
```

### Fetch headers only
```
curl -I https://example.com
```

### Use basic authentication
```
curl -u admin:password https://example.com/secure
```

---

## 🌐 Live curl Command Generator

Need to build a `curl` command without memorizing all the flags?

👉 [Try the curl Command Generator on SploitHQ](https://sploithq.com/curl)

- Choose HTTP method, headers, body, output file, and more
- Instantly generate a valid curl command
- Built for developers, bug bounty hunters, and pentesters

---

## 🔗 Useful Links

- [curl Official Website](https://curl.se/)
- [curl Manual on die.net](https://man7.org/linux/man-pages/man1/curl.1.html)
- [curl Generator on SploitHQ](https://sploithq.com/curl)

---

## 📄 License

This page is maintained by [SploitHQ](https://sploithq.com) and is not affiliated with the curl project.

`curl` is open-source and distributed under the [curl License](https://curl.se/docs/copyright.html).
