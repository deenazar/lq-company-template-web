# Web Template

This repo is the **WEB** company template. It inherits the base template
[`deenazar/lq-company-template`](https://github.com/deenazar/lq-company-template)
and adds web things as an **overlay** (new files only).

## Rule
- Base files stay byte-identical to the base repo. Never edit them here.
  Change them in the base repo, then sync.
- Web changes go only in new (overlay) files.

## Base files (from the base repo)
Exact list: `.github/base-files.txt`.
- `CLAUDE.md`, `README.md`, `.gitignore`
- `.claude/agents/` – project-manager, senior-dev, junior-dev, qa-reviewer
- `.claude/skills/` – cloud-accounts, code-review, feature-docs,
  feature-workflow, git-branching, logging, performance, project-kickoff,
  qa-testing, security, skills-catalog, ui-ux-motion, validation

## Web overlay files
- `.claude/CLAUDE.md` – web rules; adds to / overrides root `CLAUDE.md`
  (team, speed, web skills).
- `.claude/agents/` – azar, praveen, siddhu, aarun, soori, madhumathi,
  yelstin, yerva, dinesh
- `.claude/skills/` – requirements, web-feature-workflow, web-kickoff,
  web-accessibility, responsive-design, seo, api-design, ci-cd-web,
  web-performance, web-security, web-testing, web-standards,
  web-skills-catalog
- `.github/base-files.txt`, `scripts/sync-base.sh`,
  `.github/workflows/sync-base.yml`, `WEB-TEMPLATE.md`

## How sync works
1. `.github/workflows/sync-base.yml` runs every Monday (or by hand:
   Actions → Sync base template → Run workflow).
2. It runs `scripts/sync-base.sh` on `develop`:
   - copies all base files from base `main` over ours,
   - deletes base files the base removed,
   - refreshes `.github/base-files.txt`,
   - never touches overlay files (if the base adds a file with the same
     path as an overlay file, it is skipped with a warning).
3. If anything changed, it pushes `chore/<YYYYMMDD>-base-sync` and opens
   a PR into `develop`.

Run it locally: `bash scripts/sync-base.sh && git status`

## GitHub settings (turn on once)
1. **Settings → General → Template repository** – so new web projects
   can use "Use this template".
2. **Settings → Actions → General → Workflow permissions → Allow GitHub
   Actions to create and approve pull requests** – so the sync workflow
   can open its PR.

Optional secret `BASE_SYNC_TOKEN` (fine-grained PAT: read the base repo,
write contents + workflows here). Needed only if the base repo is private
or the base changes `.github/workflows/`. Note: PRs opened with the
default token do not trigger other workflows (CI); close and reopen or
push to run them.
