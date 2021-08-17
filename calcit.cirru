
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:local-storage-key |calcit-storage) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ []
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.main $ {}
        :defs $ {}
          |run-task! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1535475024658) (:by |yeKFqj7rX) (:id |6GTvXtXbNO)
              |j $ {} (:text |run-task!) (:type :leaf) (:at 1535475024658) (:by |yeKFqj7rX) (:id |A6_ZFexy_p)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1535475024658
                :by |yeKFqj7rX
                :id |TznScK41tZ
              |v $ {}
                :data $ {}
                  |T $ {} (:text |->) (:type :leaf) (:at 1629053837604) (:by |yeKFqj7rX) (:id |LNF_5hOX1Cleaf)
                  |j $ {} (:text |@*words) (:type :leaf) (:at 1629053916207) (:by |yeKFqj7rX) (:id |mLud8wqSwa)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |filter) (:type :leaf) (:at 1535475462947) (:by |yeKFqj7rX) (:id |nCn83vv8jP)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |fn) (:type :leaf) (:at 1535475464688) (:by |yeKFqj7rX) (:id |OeF6vqQkH5)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |word) (:type :leaf) (:at 1535475465961) (:by |yeKFqj7rX) (:id |RmysLLDrrZ)
                            :type :expr
                            :at 1535475465178
                            :by |yeKFqj7rX
                            :id |7EmRfaLjNH
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |if) (:type :leaf) (:at 1629054208056) (:by |yeKFqj7rX)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |&<) (:type :leaf) (:at 1629054247160) (:by |yeKFqj7rX)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |&str:count) (:type :leaf) (:at 1629054245215) (:by |yeKFqj7rX)
                                      |j $ {} (:type :leaf) (:by |yeKFqj7rX) (:at 1629054212682) (:text |word)
                                    :type :expr
                                    :at 1629054212682
                                    :by |yeKFqj7rX
                                  |r $ {} (:type :leaf) (:by |yeKFqj7rX) (:at 1629054212682) (:text |7)
                                :type :expr
                                :at 1629054212682
                                :by |yeKFqj7rX
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |let) (:type :leaf) (:at 1535475921485) (:by |yeKFqj7rX) (:id |gmQsmofq5)
                                  |L $ {}
                                    :data $ {}
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |i-pos) (:type :leaf) (:at 1563763265208) (:by |yeKFqj7rX) (:id |NyRiOrJeAF)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |&str:find-index) (:type :leaf) (:at 1629054081057) (:by |yeKFqj7rX) (:id |KfwUKtdRA)
                                              |j $ {} (:type :leaf) (:by |yeKFqj7rX) (:at 1629054086565) (:text |word)
                                              |r $ {} (:text "|\"i") (:type :leaf) (:at 1563763340570) (:by |yeKFqj7rX) (:id |Zn7_2YdpOT)
                                            :type :expr
                                            :at 1563763266150
                                            :by |yeKFqj7rX
                                            :id |-n-y3WTrFi
                                        :type :expr
                                        :at 1563763255734
                                        :by |yeKFqj7rX
                                        :id |y-_CSv7x9
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |p-pos) (:type :leaf) (:at 1563763275747) (:by |yeKFqj7rX) (:id |NyRiOrJeAF)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |&str:find-index) (:type :leaf) (:at 1629054083254) (:by |yeKFqj7rX) (:id |KfwUKtdRA)
                                              |j $ {} (:type :leaf) (:by |yeKFqj7rX) (:at 1629054088758) (:text |word)
                                              |r $ {} (:text "|\"p") (:type :leaf) (:at 1563763339066) (:by |yeKFqj7rX) (:id |Zn7_2YdpOT)
                                            :type :expr
                                            :at 1563763266150
                                            :by |yeKFqj7rX
                                            :id |-n-y3WTrFi
                                        :type :expr
                                        :at 1563763255734
                                        :by |yeKFqj7rX
                                        :id |rXMNvmNGC
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |c-pos) (:type :leaf) (:at 1563763279069) (:by |yeKFqj7rX) (:id |NyRiOrJeAF)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |&str:find-index) (:type :leaf) (:at 1629054084243) (:by |yeKFqj7rX) (:id |KfwUKtdRA)
                                              |j $ {} (:type :leaf) (:by |yeKFqj7rX) (:at 1629054090740) (:text |word)
                                              |r $ {} (:text "|\"c") (:type :leaf) (:at 1563763337276) (:by |yeKFqj7rX) (:id |Zn7_2YdpOT)
                                            :type :expr
                                            :at 1563763266150
                                            :by |yeKFqj7rX
                                            :id |-n-y3WTrFi
                                        :type :expr
                                        :at 1563763255734
                                        :by |yeKFqj7rX
                                        :id |0_4Jnl50kT
                                    :type :expr
                                    :at 1535475921699
                                    :by |yeKFqj7rX
                                    :id |yZR3T1gswL
                                  |T $ {}
                                    :data $ {}
                                      |5 $ {} (:text |;) (:type :leaf) (:at 1563763291448) (:by |yeKFqj7rX) (:id |B07_nA73a)
                                      |D $ {} (:text |and) (:type :leaf) (:at 1535475502436) (:by |yeKFqj7rX) (:id |fBtP_7iL6)
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |.includes?) (:type :leaf) (:at 1629053886677) (:by |yeKFqj7rX) (:id |5A7nsKTNpleaf)
                                          |j $ {} (:text |word) (:type :leaf) (:at 1535475492548) (:by |yeKFqj7rX) (:id |dTDYEgnYo)
                                          |r $ {} (:text "|\"i") (:type :leaf) (:at 1563763099250) (:by |yeKFqj7rX) (:id |vm4B6LJaCc)
                                        :type :expr
                                        :at 1535475481581
                                        :by |yeKFqj7rX
                                        :id |5A7nsKTNp
                                      |b $ {}
                                        :data $ {}
                                          |T $ {} (:text |.includes?) (:type :leaf) (:at 1629053889292) (:by |yeKFqj7rX) (:id |5A7nsKTNpleaf)
                                          |f $ {} (:text |word) (:type :leaf) (:at 1563763240044) (:by |yeKFqj7rX) (:id |eJfnxo_qyc)
                                          |r $ {} (:text "|\"p") (:type :leaf) (:at 1563763097956) (:by |yeKFqj7rX) (:id |vm4B6LJaCc)
                                        :type :expr
                                        :at 1535475481581
                                        :by |yeKFqj7rX
                                        :id |J5Cymi6kn
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |.includes?) (:type :leaf) (:at 1629053891983) (:by |yeKFqj7rX) (:id |5A7nsKTNpleaf)
                                          |f $ {} (:text |word) (:type :leaf) (:at 1554350187461) (:by |yeKFqj7rX) (:id |yWA6hwCkRS)
                                          |r $ {} (:text "|\"c") (:type :leaf) (:at 1563763078987) (:by |yeKFqj7rX) (:id |vm4B6LJaCc)
                                        :type :expr
                                        :at 1535475481581
                                        :by |yeKFqj7rX
                                        :id |F64ReDP8u
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |&<) (:type :leaf) (:at 1629054258599) (:by |yeKFqj7rX) (:id |9a1LaKumAOleaf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |&str:count) (:type :leaf) (:at 1629054242252) (:by |yeKFqj7rX) (:id |WuMD928JJj)
                                              |j $ {} (:text |word) (:type :leaf) (:at 1552361182580) (:by |yeKFqj7rX) (:id |gU_gJDywKT)
                                            :type :expr
                                            :at 1552361177481
                                            :by |yeKFqj7rX
                                            :id |QsZ0x4vr3v
                                          |r $ {} (:text |14) (:type :leaf) (:at 1563763410598) (:by |yeKFqj7rX) (:id |8pgnXDbdiO)
                                        :type :expr
                                        :at 1552361120894
                                        :by |yeKFqj7rX
                                        :id |9a1LaKumAO
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |&>) (:type :leaf) (:at 1629054260364) (:by |yeKFqj7rX) (:id |9a1LaKumAOleaf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |&str:count) (:type :leaf) (:at 1629054243684) (:by |yeKFqj7rX) (:id |WuMD928JJj)
                                              |j $ {} (:text |word) (:type :leaf) (:at 1552361182580) (:by |yeKFqj7rX) (:id |gU_gJDywKT)
                                            :type :expr
                                            :at 1552361177481
                                            :by |yeKFqj7rX
                                            :id |QsZ0x4vr3v
                                          |r $ {} (:text |3) (:type :leaf) (:at 1552362299367) (:by |yeKFqj7rX) (:id |8pgnXDbdiO)
                                        :type :expr
                                        :at 1552361120894
                                        :by |yeKFqj7rX
                                        :id |aim-N3pzb
                                    :type :expr
                                    :at 1535475501391
                                    :by |yeKFqj7rX
                                    :id |BBym4V5cOg
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |<=) (:type :leaf) (:at 1563763516061) (:by |yeKFqj7rX) (:id |crCKlCFVtB)
                                      |j $ {} (:text |0) (:type :leaf) (:at 1563763325323) (:by |yeKFqj7rX) (:id |1bSGZYkchw)
                                      |r $ {} (:text |i-pos) (:type :leaf) (:at 1563763325323) (:by |yeKFqj7rX) (:id |gQ37RJZiB6)
                                      |v $ {} (:text |p-pos) (:type :leaf) (:at 1563763325323) (:by |yeKFqj7rX) (:id |WdutIZGLw_)
                                      |x $ {} (:text |c-pos) (:type :leaf) (:at 1563763325323) (:by |yeKFqj7rX) (:id |jnO2gn2RGI)
                                    :type :expr
                                    :at 1563763325323
                                    :by |yeKFqj7rX
                                    :id |w1MzsNpuDu
                                :type :expr
                                :at 1535475920212
                                :by |yeKFqj7rX
                                :id |K1NhLYh4LA
                              |j $ {} (:text |false) (:type :leaf) (:at 1629054217028) (:by |yeKFqj7rX)
                            :type :expr
                            :at 1629054206743
                            :by |yeKFqj7rX
                        :type :expr
                        :at 1535475464371
                        :by |yeKFqj7rX
                        :id |kerSRg97o
                    :type :expr
                    :at 1535475458669
                    :by |yeKFqj7rX
                    :id |TSWqrN8wt
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |.join-str) (:type :leaf) (:at 1629053858030) (:by |yeKFqj7rX) (:id |so99G6MVGleaf)
                      |j $ {} (:text |&newline) (:type :leaf) (:at 1629053859931) (:by |yeKFqj7rX) (:id |qpcAFrgPJ4)
                    :type :expr
                    :at 1535475470275
                    :by |yeKFqj7rX
                    :id |so99G6MVG
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1535475479300) (:by |yeKFqj7rX) (:id |8YID6iHoelleaf)
                    :type :expr
                    :at 1535475478404
                    :by |yeKFqj7rX
                    :id |8YID6iHoel
                :type :expr
                :at 1535475451259
                :by |yeKFqj7rX
                :id |LNF_5hOX1C
            :type :expr
            :at 1535475024658
            :by |yeKFqj7rX
            :id |ku2rcgMpPa
          |main! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1534483214794) (:by |yeKFqj7rX) (:id |0OZDgsAOvf)
              |j $ {} (:text |main!) (:type :leaf) (:at 1534483214794) (:by |yeKFqj7rX) (:id |mI-t3ViWvV)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1534483214794
                :by |yeKFqj7rX
                :id |lP6uJuLIHa
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1534483220269) (:by |yeKFqj7rX) (:id |7MO0wI6pRHleaf)
                  |j $ {} (:text "|\"Started.") (:type :leaf) (:at 1534483646733) (:by |yeKFqj7rX) (:id |QtyUDYYqzh)
                :type :expr
                :at 1534483219154
                :by |yeKFqj7rX
                :id |7MO0wI6pRH
              |x $ {}
                :data $ {}
                  |T $ {} (:text |run-task!) (:type :leaf) (:at 1535475024271) (:by |yeKFqj7rX) (:id |JlCcoSE_bdleaf)
                :type :expr
                :at 1535475020265
                :by |yeKFqj7rX
                :id |JlCcoSE_bd
            :type :expr
            :at 1534483214794
            :by |yeKFqj7rX
            :id |SWvtON639q
          |*words $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1629053629984) (:by |yeKFqj7rX) (:id |wlavGgDl0t)
              |j $ {} (:type :leaf) (:by |yeKFqj7rX) (:at 1629053912872) (:text |*words)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |->) (:type :leaf) (:at 1535475134425) (:by |yeKFqj7rX) (:id |nr7i4-IoZb)
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |read-file) (:type :leaf) (:at 1629053646261) (:by |yeKFqj7rX) (:id |NlaneZEbph)
                      |j $ {} (:text "|\"./target/words_alpha.txt") (:type :leaf) (:at 1629053935955) (:by |yeKFqj7rX) (:id |IMKAG9v_jl)
                      |r $ {} (:text "|\"utf8") (:type :leaf) (:at 1535475131793) (:by |yeKFqj7rX) (:id |rq0w48ZNmO)
                    :type :expr
                    :at 1535475078471
                    :by |yeKFqj7rX
                    :id |bM259K1szc
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |.trim) (:type :leaf) (:at 1629053674627) (:by |yeKFqj7rX) (:id |rpSSdVFeQleaf)
                    :type :expr
                    :at 1535475135588
                    :by |yeKFqj7rX
                    :id |rpSSdVFeQ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |.split-lines) (:type :leaf) (:at 1629053676641) (:by |yeKFqj7rX) (:id |C_iPmlgNExleaf)
                    :type :expr
                    :at 1535475140856
                    :by |yeKFqj7rX
                    :id |C_iPmlgNEx
                :type :expr
                :at 1535475132841
                :by |yeKFqj7rX
                :id |x3Ze-Ipkp
            :type :expr
            :at 1535475078471
            :by |yeKFqj7rX
            :id |pcFP_3Mt6m
          |reload! $ {}
            :data $ {}
              |wT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1534483228922) (:by |yeKFqj7rX) (:id |_PKSES8fGyleaf)
                  |j $ {} (:text "|\"Reloaded.") (:type :leaf) (:at 1534483648553) (:by |yeKFqj7rX) (:id |EGqaOPxjzt)
                :type :expr
                :at 1534483228056
                :by |yeKFqj7rX
                :id |nvVffdJ4rl
              |xD $ {}
                :data $ {}
                  |T $ {} (:text |run-task!) (:type :leaf) (:at 1535475034650) (:by |yeKFqj7rX) (:id |J8L6QfmR5leaf)
                :type :expr
                :at 1535475031756
                :by |yeKFqj7rX
                :id |J8L6QfmR5
              |T $ {} (:text |defn) (:type :leaf) (:at 1534483216569) (:by |yeKFqj7rX) (:id |78G4OkYMQ2)
              |j $ {} (:text |reload!) (:type :leaf) (:at 1534483216569) (:by |yeKFqj7rX) (:id |uDkGHYSsJo)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1534483216569
                :by |yeKFqj7rX
                :id |Lpt5qqH2Vl
            :type :expr
            :at 1534483216569
            :by |yeKFqj7rX
            :id |-BOhJzActg
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1534483212338
          :by |yeKFqj7rX
          :id |mpzXR47-KZ
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1534483212338) (:by |yeKFqj7rX) (:id |jeg5aDS4Wa)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1534483212338) (:by |yeKFqj7rX) (:id |Hvc4wCBXc4)
          :type :expr
          :at 1534483212338
          :by |yeKFqj7rX
          :id |WD4drWEfD9
  :users $ {}
    |yeKFqj7rX $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |yeKFqj7rX) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
