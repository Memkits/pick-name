
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ []
    :version |0.0.1
  :files $ {}
    |app.main $ {}
      :ns $ quote (ns app.main)
      :defs $ {}
        |run-task! $ quote
          defn run-task! () $ -> @*words
            filter $ fn (word)
              if
                &< (&str:count word) 7
                let
                    i-pos $ &str:find-index word "\"i"
                    p-pos $ &str:find-index word "\"p"
                    c-pos $ &str:find-index word "\"c"
                  ; and (.includes? word "\"i") (.includes? word "\"p") (.includes? word "\"c")
                    &< (&str:count word) 14
                    &> (&str:count word) 3
                  <= 0 i-pos p-pos c-pos
                , false
            .join-str &newline
            println
        |main! $ quote
          defn main! () (println "\"Started.") (run-task!)
        |*words $ quote
          defatom *words $ -> (read-file "\"./target/words_alpha.txt" "\"utf8") (.trim) (.split-lines)
        |reload! $ quote
          defn reload! () (println "\"Reloaded.") (run-task!)
