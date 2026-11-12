---
name: web-testing
description: Use when testing or reviewing any web feature. Adds web rules to qa-testing and code-review.
---

# Web Testing

## Test types
- **Unit** – logic, utils, schemas.
- **Component** – UI states (loading, empty, error, success).
- **API** – status codes, error shape, validation, auth and per-record
  access.
- **E2E (Playwright)** – main user flows; runs in CI.

## Rules
- Stable selectors: `getByRole`, `getByLabel`, `data-testid`. No CSS
  chains or text that changes.
- No fixed sleeps; wait for UI state.
- Check: Chromium + Firefox + WebKit; widths 320 / 768 / 1440; keyboard
  only; slow 3G; double submit; back button; refresh mid-flow.
- Run axe on each main page.

## Bug report
```
[High|Medium|Low] <title>
Steps: 1. … 2. …
Expected: …   Actual: …
Where: browser, width, URL   Evidence: screenshot / log
```

## Web code-review checklist
- [ ] Matches requirements + acceptance criteria
- [ ] Server-side validation and authorization
- [ ] No secrets in client code or logs
- [ ] All UI states, responsive, accessible
- [ ] No N+1, no waterfalls, images/fonts optimized
- [ ] Tests added; CI green
- [ ] Docs updated
