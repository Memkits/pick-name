
Pick Name
----

> a simple script to filter English words looking for a name.

Based on https://github.com/dwyl/english-words

### 使用者影响

本轮将CLI和 `@calcit/procs` 一起配对正式 **0.32.0**，从此前的 0.31.0 配对升级。
请重新安装配对工具链；本次通过官方 formatter 更新 Snapshot 类型语法，筛选算法、输入路径和输出合同不变，也不发布npm包。
没有外部Calcit模块，无需引入新的迁移/校验脚本或质量预算。

以下Result文件读取与Option搜索说明属于前一轮已合并的源码迁移，本轮保持这些行为：

保留 `target/words_alpha.txt` 路径、原筛选条件、输出顺序和缺失文件时的失败行为。
读取改用 `fs:path` / `.read-text` 的 Result 合同；失败会保留文件错误并退出，
不会把无法读取的词典静默当作空词典。`defref` 替代已弃用的 `defatom`。

This project requires paired formal Calcit/procs 0.32.0, Node.js 24 and Yarn 4.18.0.
使用固定官方 0.32.0 CLI 重新运行原类型、质量与临时词典回归，Linux CI 保留同一套门禁。

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

String search returns `Option<Number>`; `.unwrap-or -1` preserves the original
missing-letter behavior. CI keeps strict all-definition/workflow/quality gates and the
existing fixture tests, without a compiler rewrite preset or extra checker.
The existing baseline is tightened to zero for all metrics, including the old
schemaDynamic/typeNone/typeNotFull/unresolved allowances; no budget is relaxed.
The legacy quality comparison remains until an equivalent supported gate can
replace it, without adding a project-specific checker. Actions use published version tags rather
than hashes as requested; tags remain mutable despite read-only permissions.

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
