
{}
  :message "|read-file failed at ./target/words_alpha.txt: No such file or directory (os error 2)"
  :location $ {} (:def |defatom) (:ns |app.main)
    :coord $ []
  :stack $ []
    {}
      :code "|defatom app.main/*words $ split-lines $ trim (read-file |./target/words_alpha.txt)"
      :def |app.main/defatom
      :kind :syntax
      :location nil
      :args $ [] '*words $ [] 'split-lines
        [] 'trim $ [] 'read-file |./target/words_alpha.txt
    {} (:code |app.main/run-task!) (:def |app.main/run-task!) (:kind :fn) (:location nil)
      :args $ []
