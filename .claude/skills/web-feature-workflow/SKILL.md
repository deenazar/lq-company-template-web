---
name: web-feature-workflow
description: Use for every web feature or change request. Replaces feature-workflow in the web template.
---

# Web Feature Workflow

0. **Branch** – git-branching skill (new branch from `develop`).
1. **Read** – `CLAUDE.md`, `.claude/CLAUDE.md`, `docs/PROJECT.md`,
   `docs/DECISIONS.md`, `docs/FEATURES.md`.
2. **Requirements** – Praveen writes `docs/requirements/<feature>.md`
   (requirements skill). Open questions → owner, one message.
3. **Plan** – Azar splits into small tasks in waves: files, acceptance
   criteria, skills, owner (Siddhu / Aarun / Soori / MadhuMathi /
   Yelstin), QA split (Yerva / Dinesh). Wave 1 = shared types, API
   contracts, design tokens. No two tasks touch the same file in a wave.
4. **WAIT for owner approval.**
5. **Build** – each wave in parallel: one sub-agent per person, same
   message. Next wave starts when the current one is done.
6. **Test** – Yerva and Dinesh test in parallel (web-testing). Devs fix
   High and Medium. QA re-tests.
7. **Gate** – build, lint, type-check and all tests pass (same as CI).
8. **Docs** – Praveen updates FEATURES, CHANGELOG, DECISIONS, user
   docs. Azar updates status / roadmap.
9. **PR** into `develop`, short summary. Small PRs.

Blocked → say it in one line and move on.
