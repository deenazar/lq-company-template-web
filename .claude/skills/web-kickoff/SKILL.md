---
name: web-kickoff
description: Use right after project-kickoff in the web template. Adds web-only kickoff steps.
---

# Web Kickoff

Run after project-kickoff, on the same branch.

1. **Tech stack** – in `docs/PROJECT.md` "Tech stack", name each:
   frontend, backend / API, database, auth, hosting. Ask the owner in
   one message if missing.
2. **Project skills** – pick from web-skills-catalog + skills-catalog
   for this stack. Install and list them.
3. **API overview** – add a section "API overview" to `docs/PROJECT.md`:
   base URL, auth method, error shape, versioning, main resources
   (api-design skill).
4. **CI** – add `.github/workflows/ci.yml` (ci-cd-web skill).
5. **Requirements folder** – create `docs/requirements/` with a
   `README.md` pointing to the requirements skill.
6. **Cloud-session hook** – add a SessionStart hook in
   `.claude/settings.json` that installs Node deps and Playwright
   browsers ONLY when `CLAUDE_CODE_REMOTE` is `"true"`:
   ```bash
   [ "$CLAUDE_CODE_REMOTE" = "true" ] || exit 0
   npm ci && npx playwright install --with-deps chromium
   ```
   Tell the owner if the network blocks it.
7. Add web performance targets (web-performance) to "Performance targets".
