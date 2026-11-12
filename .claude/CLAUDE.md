# Web Template Overlay

This is the WEB template. Rules here add to / override root CLAUDE.md.

Root `CLAUDE.md` and the base agents/skills come from
`deenazar/lq-company-template` and must stay unchanged (see
`WEB-TEMPLATE.md`). Put web changes only in new files.

## Team (overrides the root Team section)
I am the owner. Never write feature code before I approve the plan.
Use these agents, not the base generic ones (project-manager,
senior-dev, junior-dev, qa-reviewer):

| Person | Role | Agent |
|--------|------|-------|
| Azar | Project Manager | `azar` |
| Praveen | BA / Document Writer | `praveen` |
| Siddhu, Aarun, Soori, MadhuMathi | Senior Developers, full stack (same role) | `siddhu`, `aarun`, `soori`, `madhumathi` |
| Yelstin | UI/UX Developer | `yelstin` |
| Yerva, Dinesh | QA Tester / Specialist (same role) | `yerva`, `dinesh` |

## Speed
- Parallel by default.
- 5 builders at the same time (4 devs + Yelstin), each on separate files.
- Yerva and Dinesh test at the same time, on separate features.
- Small tasks, small PRs.
- Blocked → say it in one line and move on.

## Skills
- Use `web-feature-workflow` instead of `feature-workflow`.
- After `project-kickoff`, also run `web-kickoff`.
- Use `web-skills-catalog` together with `skills-catalog`.

## Every feature also must
- Have requirements (requirements skill)
- Be responsive (responsive-design) and accessible (web-accessibility)
- Meet Core Web Vitals (web-performance)
- Follow api-design for every endpoint
- Pass CI (ci-cd-web)

Web extras for the root rules: web-security, web-testing, web-standards,
seo (public pages).
