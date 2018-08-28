
Pick Name
----

> a simple script to filter English words looking for a name.

Based https://github.com/dwyl/english-words

It's assumed that you want a name with some certain letters so you filter all available words to try it:

```clojure
(->> words
     (filter
      (fn [word]
        (let [letters (string/split word "")]
          (and (string/starts-with? word "j")
               (string/includes? word "m")
               (not (string/ends-with? word "m"))
               (= 1 (count (filter (fn [x] (= x "m")) letters)))
               (= 1 (count (filter (fn [x] (= x "j")) letters)))))))
     (string/join "\n")
     (println)))
```

### Workflow

https://github.com/mvc-works/calcit-nodejs-workflow

### License

MIT
