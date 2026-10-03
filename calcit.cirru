
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
          :code $ quote $ defatom *words
            -> (read-file |./target/words_alpha.txt) trim split-lines
          :examples $ []
          :schema $ :: 'Ref $ :: 'List 'String
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (println |Started.) (run-task!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |Reloaded.) (run-task!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
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
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
