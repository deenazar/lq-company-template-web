---
name: web-security
description: Use for any web feature with auth, data, forms, APIs or third-party code. Adds web rules to the security skill.
---

# Web Security

- **OWASP Top 10** – check each change against it.
- **Auth / sessions** – cookies `HttpOnly`, `Secure`, `SameSite=Lax`
  (or Strict); rotate session on login; logout clears it server-side.
- **Authorization on the server** – every request checks the user may
  access that record. Never trust the client.
- **Injection** – parameterized queries / ORM only; never build SQL or
  shell commands from input.
- **XSS** – rely on framework escaping; no raw HTML from users (sanitize
  if you must).
- **CSRF** – SameSite cookies plus CSRF token for cookie-auth forms.
- **CORS** – allow-list exact origins; never `*` with credentials.
- **Headers** – CSP, HSTS, `X-Content-Type-Options: nosniff`,
  `Referrer-Policy`, `frame-ancestors`.
- **Keys** – only public keys in the browser (`NEXT_PUBLIC_*`,
  `VITE_*`); secrets stay on the server.
- **Rate-limit** login, sign-up, password reset and OTP.
- **Dependencies** – `npm audit` / Dependabot; fix high/critical.
