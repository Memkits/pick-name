
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*words $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *words $ -> (read-file |./target/words_alpha.txt) (.trim) (.split-lines)
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () (println |Started.) (run-task!)
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println |Reloaded.) (run-task!)
          :examples $ []
          :schema $ :: 'Dynamic
        'run-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-task! () $ -> @*words
              filter $ fn (word)
                if
                  &< (&str:count word) 7
                  let
                      i-pos $ &str:find-index word |i
                      p-pos $ &str:find-index word |p
                      c-pos $ &str:find-index word |c
                    ; and (.includes? word |i) (.includes? word |p) (.includes? word |c)
                      &< (&str:count word) 14
                      &> (&str:count word) 3
                    <= 0 i-pos p-pos c-pos
                  , false
              .join-str &newline
              println
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.main)
