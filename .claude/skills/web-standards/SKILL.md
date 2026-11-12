---
name: web-standards
description: Use for web UI, forms and server code. Web extras for ui-ux-motion, validation and logging.
---

# Web Standards

## UI / motion (adds to ui-ux-motion)
- Every interactive element has hover, active, `:focus-visible` and
  disabled states.
- Skeletons for loading content; no layout shift when data arrives.
- Animate only `transform` and `opacity`; 150–300 ms; respect
  `prefers-reduced-motion`.

## Validation (adds to validation)
- One shared schema (e.g. Zod) used on client AND server. The server
  always validates.
- Uploads: allow-list file types (check content, not only extension),
  max size, rename files, store outside the web root.

## Logging (adds to logging)
- Structured JSON logs: time, level, message, requestId, userId (no
  personal data or secrets).
- Request ID on every request; return it in error responses.
- Send errors to an error tracker (e.g. Sentry) for client and server.
