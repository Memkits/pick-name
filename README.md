
Pick Name
----

> a simple script to filter English words looking for a name.

Based on https://github.com/dwyl/english-words

It's assumed that you want a name with some certain letters so you filter all available words to try it:

```cirru
-> @*words
  filter $ fn (word)
    if
      &< (&str:count word) 7
      let
          i-pos $ &str:find-index word "\"i"
          p-pos $ &str:find-index word "\"p"
          c-pos $ &str:find-index word "\"c"
        <= 0 i-pos p-pos c-pos
      , false
  .join-str &newline
  println
```

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
