---
name: ci-cd-web
description: Use when setting up or changing CI/CD for a web project.
---

# CI / CD (web)

## PR CI (`.github/workflows/ci.yml`, on pull_request)
1. Install with cache (`npm ci` + `actions/setup-node` cache).
2. Lint → type-check → unit tests → build → Playwright e2e.
3. Upload the Playwright report only on failure.
Every step must pass before merge.

## Deploys
- Preview deploy for every PR (Vercel / Netlify / host previews).
- `develop` → staging. `main` → production.

## Rules
- Secrets only in GitHub Settings → Secrets or the host's env settings.
  Never in git, never in logs.
- Pin actions to a full commit SHA (`uses: actions/checkout@<sha> # v4`).
- Least privilege: `permissions: contents: read` at top; add more only
  per job when needed.
- Add `timeout-minutes` and `concurrency` (cancel old runs on the same
  branch).
