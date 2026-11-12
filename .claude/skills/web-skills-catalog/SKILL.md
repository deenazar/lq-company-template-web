---
name: web-skills-catalog
description: Web list of approved external skills. Use with skills-catalog during web-kickoff. Nothing here is installed in the template.
---

# Web Skills Catalog

List only. Same install rules as the skills-catalog skill (real folders,
read each SKILL.md, report risks, list in `docs/PROJECT.md`). The stack
differs per project: pick at kickoff.

| Skill | When | Source |
|-------|------|--------|
| frontend-design | Any web UI | `https://github.com/anthropics/skills --skill frontend-design` |
| webapp-testing | Playwright / browser testing | `https://github.com/anthropics/skills --skill webapp-testing` |
| vercel-react-best-practices | React / Next.js | `https://github.com/vercel-labs/agent-skills --skill vercel-react-best-practices` |
| vercel-composition-patterns | React component design | `https://github.com/vercel-labs/agent-skills --skill vercel-composition-patterns` |
| web-design-guidelines | UI review | `https://github.com/vercel-labs/agent-skills --skill web-design-guidelines` |
| shadcn | shadcn/ui projects | `https://github.com/shadcn-ui/ui --skill shadcn` |
| design-taste | Any web UI | `h3nryprod01/design-taste` |
| supabase-postgres-best-practices | Supabase / Postgres | `https://github.com/supabase/agent-skills --skill supabase-postgres-best-practices` |
| gsap-framer-scroll-animation | Landing pages / scroll motion | `https://github.com/github/awesome-copilot --skill gsap-framer-scroll-animation` |

Install: `npx skills add <source> -a claude-code -y`
