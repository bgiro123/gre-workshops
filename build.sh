#!/usr/bin/env bash
# Builds every deck into dist/<slug>/ plus a landing page at dist/index.html
set -e
rm -rf dist && mkdir -p dist
for f in picking-numbers word-problems algebra quantitative-comparison exponents integer-properties issue-essay text-completion-sentence-equivalence reading-comprehension geometry data-interpretation pacing; do
  npx slidev build "$f.md" --base "/$f/" --out "dist/$f"
done
cp index.html dist/index.html
