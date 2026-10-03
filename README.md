
Pick Name
----

> a simple script to filter English words looking for a name.

Based on https://github.com/dwyl/english-words

Requires Calcit/procs 0.28.0, Node.js 24 and Yarn 4.18.0. The canonical sources are `calcit.cirru` and
`deps.cirru`; do not regenerate or commit retired `compact.cirru` or
`package.cirru` snapshots. This is a native CLI tool, not a frontend deployment,
so no COS/CDN upload is needed.

Run `caps --ci --strict`, `yarn install --immutable`, download the dictionary
with `yarn dl` (create `target/` first), then run `calcit calcit.cirru`.
`node --test scripts/word-filter.test.mjs` tests temporary fixture dictionaries
without replacing your downloaded `target/words_alpha.txt`.

It's assumed that you want a name with some certain letters so you filter all available words to try it:

```cirru
-> @*words
  filter $ fn (word)
    if
      < (.len word) 7
      let
          i-pos $ .unwrap-or (.find-index word |i) -1
          p-pos $ .unwrap-or (.find-index word |p) -1
          c-pos $ .unwrap-or (.find-index word |c) -1
        <= 0 i-pos p-pos c-pos
      , false
  join-string &newline
  println
```

String search returns `Option<Number>`; `.unwrap-or -1` preserves the original
missing-letter behavior. CI keeps strict type/public/quality gates and the
existing fixture tests, without a compiler rewrite preset or extra checker.
The quality baseline is unchanged. Actions use published version tags rather
than hashes as requested; tags remain mutable despite read-only permissions.

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
