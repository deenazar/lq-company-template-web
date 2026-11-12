---
name: web-accessibility
description: Use for every web page or component. Target WCAG 2.2 AA.
---

# Web Accessibility (WCAG 2.2 AA)

- **Semantic HTML** – `button`, `a`, `nav`, `main`, `header`, `label`,
  headings in order. ARIA only when HTML can't do it.
- **Keyboard** – everything works with Tab / Shift+Tab / Enter / Space /
  Esc. No keyboard traps. Logical tab order.
- **Focus** – visible `:focus-visible` ring; move focus into dialogs and
  back when they close; focus not hidden by sticky bars.
- **Labels** – every input has a label; errors linked with
  `aria-describedby`; icon buttons have `aria-label`.
- **Contrast** – text 4.5:1, large text and UI parts 3:1.
- **Alt text** – meaningful images get alt; decorative get `alt=""`.
- **Targets** – at least 24×24 px.
- **Page basics** – `<html lang>`, unique `<title>`, skip link to main.
- Don't rely on color alone. Respect `prefers-reduced-motion`.
- **Check** – run axe (e.g. `@axe-core/playwright`) in e2e tests; zero
  serious/critical issues. Test once with a screen reader for main flows.
