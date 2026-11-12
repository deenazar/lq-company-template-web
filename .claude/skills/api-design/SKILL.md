---
name: api-design
description: Use for every API endpoint or server action.
---

# API Design

- **Contract first** – write request/response types (shared schema) in
  wave 1, before building the client or server.
- **REST** – plural nouns (`/api/v1/orders/{id}`), HTTP verbs, correct
  status codes: 200, 201, 204, 400, 401, 403, 404, 409, 422, 429, 500.
- **One error shape** everywhere:
  `{ "error": { "code": "VALIDATION_FAILED", "message": "...", "details": [], "requestId": "..." } }`
- **Validate on the server** with the shared schema (validation skill).
- **Auth + access checks** – check login AND that the user may access
  THIS record, on every request.
- **Pagination** – cursor or `limit`/`offset`, with a max limit.
- **Rate limits** – especially auth and write endpoints; return 429.
- **Versioning** – `/api/v1`; never break a published contract.
- **Document** each endpoint in `docs/PROJECT.md` "API overview" (or an
  OpenAPI file): method, path, auth, request, response, errors.
