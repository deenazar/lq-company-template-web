---
name: web-performance
description: Use for every web page, API endpoint or data load. Adds web targets to the performance skill.
---

# Web Performance

## Targets (p75, mobile)
- LCP < 2.5 s, INP < 200 ms, CLS < 0.1
- API p95 < 300 ms

## Rules
- Code-split by route; lazy-load heavy, below-the-fold parts.
- Images: modern formats (AVIF/WebP), right size, `width`/`height`,
  lazy below the fold, priority for the LCP image.
- Fonts: self-host or preconnect, `font-display: swap`, subset, few
  weights.
- No request waterfalls: fetch in parallel, on the server when possible.
- No N+1 queries; add indexes for filters and sorts.
- Cache where safe (HTTP cache, CDN, data cache).
- Keep JS small; check bundle size when adding a dependency.

## Measure
Lighthouse / PageSpeed on main pages, Web Vitals in production, and API
timings in logs. Write results in the PR.
