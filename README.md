
Pick Name
----

> a simple script to filter English words looking for a name.

Based on https://github.com/dwyl/english-words

Requires Calcit 0.27.0. The canonical sources are `calcit.cirru` and
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
      &< (&str:count word) 7
      let
          i-pos $ &str:find-index word |i
          p-pos $ &str:find-index word |p
          c-pos $ &str:find-index word |c
        <= 0 i-pos p-pos c-pos
      , false
  join-str &newline
  println
```

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
