
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {} $ 'app.main
    %{} 'FileEntry
      :defs $ {}
        '*words $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *words
            ->
              let
                  path |./target/words_alpha.txt
                match
                  .read-text $ fs:path path
                  (:ok text) text
                  (:err message)
                    raise $ str-spaced "|Could not read dictionary" path message
              , trim split-lines
          :examples $ []
          :schema $ quote $ Ref (List String)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (println |Started.) (run-task!)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |Reloaded.) (run-task!)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'run-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-task! ()
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
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
