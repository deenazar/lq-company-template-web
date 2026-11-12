#!/usr/bin/env bash
# Sync base files from deenazar/lq-company-template into this repo.
# - Copies every base file over ours.
# - Deletes files listed in .github/base-files.txt that the base removed.
# - Refreshes .github/base-files.txt.
# - Never touches overlay files (files we have that are not in the list).
# Optional env: BASE_REPO, BASE_REF, BASE_TOKEN (for a private base repo).
set -euo pipefail

BASE_REPO="${BASE_REPO:-https://github.com/deenazar/lq-company-template.git}"
BASE_REF="${BASE_REF:-main}"
LIST=".github/base-files.txt"

cd "$(git rev-parse --show-toplevel)"
[ -f "$LIST" ] || { echo "Missing $LIST" >&2; exit 1; }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

auth=()
if [ -n "${BASE_TOKEN:-}" ]; then
  basic="$(printf 'x-access-token:%s' "$BASE_TOKEN" | base64 | tr -d '\n')"
  auth=(-c "http.extraHeader=AUTHORIZATION: basic $basic")
fi

echo "Fetching $BASE_REPO ($BASE_REF)"
git "${auth[@]}" clone --quiet --depth 1 --branch "$BASE_REF" "$BASE_REPO" "$tmp/base"
(cd "$tmp/base" && git ls-files) | LC_ALL=C sort > "$tmp/new"
grep -v '^[[:space:]]*$' "$LIST" | LC_ALL=C sort > "$tmp/old" || true

is_old_base() { grep -qxF -- "$1" "$tmp/old"; }

: > "$tmp/list"
while IFS= read -r f; do
  if [ -e "$f" ] && ! is_old_base "$f"; then
    echo "SKIP (overlay file, also added in base): $f" >&2
    continue
  fi
  mkdir -p "$(dirname "$f")"
  cp -p "$tmp/base/$f" "$f"
  echo "$f" >> "$tmp/list"
done < "$tmp/new"

# Base files that the base removed.
LC_ALL=C comm -23 "$tmp/old" "$tmp/new" | while IFS= read -r f; do
  if [ -e "$f" ]; then
    rm -f -- "$f"
    echo "Removed (deleted in base): $f"
  fi
done

cp "$tmp/list" "$LIST"
echo "Done. Review with: git status"
