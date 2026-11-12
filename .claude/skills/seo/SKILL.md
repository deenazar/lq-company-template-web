---
name: seo
description: Use for public (marketing / content) pages. App pages behind login get noindex.
---

# SEO (public pages)

- Unique `<title>` (≤ 60 chars) and meta description (≤ 160 chars).
- One `<h1>` per page; headings in order.
- Server-render or pre-render public pages (content in the HTML).
- `<link rel="canonical">` on every page.
- Open Graph + Twitter tags (title, description, image, url).
- `sitemap.xml` and `robots.txt`.
- JSON-LD structured data where it fits (Organization, Product, Article,
  FAQ, Breadcrumb).
- App / private pages: `<meta name="robots" content="noindex">` and
  keep them out of the sitemap.
- Clean, readable URLs; real links (`<a href>`) for navigation.
