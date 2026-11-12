---
name: requirements
description: Use before planning any web feature. Praveen writes docs/requirements/<feature>.md.
---

# Requirements

Write `docs/requirements/<feature>.md` before Azar plans. Sections:

1. **Goal** – one or two lines: what and why.
2. **User stories** – "As a <user>, I want <thing>, so that <value>."
3. **Acceptance criteria** – Given / When / Then, one per behaviour.
   Cover happy path, errors and permissions.
4. **Business rules** – limits, roles, calculations.
5. **Pages / flows** – pages, steps, states (loading, empty, error).
6. **Data** – fields, types, required, who can see/edit, sensitive?
7. **Edge cases** – empty, huge, slow network, double submit, no access.
8. **Out of scope** – what we will not build now.
9. **Open questions** – ask the owner ALL of them in ONE message.

Keep it short. No code. QA builds the test plan from the acceptance
criteria, so make each one testable.
