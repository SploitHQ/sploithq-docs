# Regex Tester – Build and Validate Regular Expressions

The **Regex Tester** on SploitHQ allows you to write, test, and debug regular expressions in real time. Whether you're validating input, extracting data, or learning how regex works, this tool provides instant feedback and match highlighting.

🔗 [Try the Regex Tester on SploitHQ](https://sploithq.com/regex)

---

## 🔍 What Can the Regex Tester Do?

- Live test regex patterns against custom input
- Highlight matches and capture groups
- Support common modifiers like `g`, `i`, `m`
- Provide syntax tips and quick references

---

## ⚙️ Features

| Feature                | Description                                             |
|------------------------|---------------------------------------------------------|
| Pattern input          | Write and test any regular expression                  |
| Test text area         | Paste text to match against                            |
| Match highlighting     | See which substrings the regex matches                 |
| Capture group display  | View extracted substrings using parentheses            |
| Modifier toggles       | Enable case-insensitive, global, multiline matching    |

---

## 🧪 Example Patterns

### Match an email address:
```regex
\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b
```

### Match a URL:
```regex
https?:\/\/(www\.)?[\w\-]+(\.[\w\-]+)+[\w\-.,@?^=%&:/~+#]*
```

### Extract numbers:
```regex
\d+
```

### Match a strong password (8+ characters, mix of types):
```regex
^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$
```

---

## 🧰 Tips for Writing Regex

- Use `\d` for digits, `\w` for word characters, and `.` for any character
- Use `^` and `$` for start/end of string anchors
- Parentheses `()` create capture groups
- Use `*`, `+`, and `{}` for repetition

---

## ⚠️ Notes

- Regex behavior may vary slightly between programming languages (JavaScript, Python, etc.)
- This tester follows JavaScript-style syntax for compatibility
- Escaping characters is essential when matching symbols (e.g., `\.` to match a literal period)

---

## 🌐 SploitHQ Regex Tester

👉 [Build and Test Regex Now](https://sploithq.com/regex)

- Write patterns and validate input in real time
- Copy your expressions for use in code or terminal tools
- Perfect for CTFs, scripts, and web filters

---

## 🔗 Useful Links

- [Regex101 – Reference Tool](https://regex101.com/)
- [MDN Regex Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions)
- [SploitHQ Regex Page](https://sploithq.com/regex)

---

## 📄 License

This tool is maintained by [SploitHQ](https://sploithq.com) and runs fully in the browser.  
No input or pattern is saved or sent to any server.
