
Pick Name
----

> a simple script to filter English words looking for a name.

Based on https://github.com/dwyl/english-words

### 使用者影响

源码使用正式 Calcit 与 `@calcit/procs` **0.42.1**。请重新安装配对工具链，再按原路径运行词典筛选。

四个项目定义都具备完整类型。旧质量命令由 `weak-types` 替代，继续要求完整类型覆盖，动态类型、未解析类型槽、nil、unsafe 和弃用调用的预算均为零。

保留 `target/words_alpha.txt` 路径、原筛选条件、输出顺序和缺失文件时的失败行为。
读取改用 `fs:path` / `.read-text` 的 Result 合同；失败会保留文件错误并退出，
不会把无法读取的词典静默当作空词典。`defref` 替代已弃用的 `defatom`。

This project requires paired formal Calcit/procs 0.42.1, Node.js 24 and Yarn 4.18.0.
使用固定官方 0.42.1 CLI 重新运行原类型、质量与临时词典回归，Linux CI 保留同一套门禁。

The canonical sources are `calcit.cirru` and
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

String search returns `Option<Number>`. The fallback `.unwrap-or -1` handles
a missing letter. CI checks canonical formatting, all definitions, the strict
workflow, zero weak-type findings and the original dictionary fixtures.

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
