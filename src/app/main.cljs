
(ns app.main
  (:require [skir.client :as skir-client]
            ["fs" :as fs]
            ["path" :as path]
            [clojure.string :as string]
            [cljs.reader :refer [read-string]]))

(defonce words
  (-> (fs/readFileSync (path/join js/__dirname "words_alpha.txt") "utf8")
      (string/trim)
      (string/split-lines)))

(defn run-task! []
  (-> js/process .-stdout (.write (read-string "\"\\033[2J\"")))
  (->> words
       (filter
        (fn [word]
          (let [letters (vec (string/split word ""))
                i-pos (.indexOf letters "i")
                p-pos (.indexOf letters "p")
                c-pos (.indexOf letters "c")]
            (comment
             and
             (string/includes? word "i")
             (string/includes? word "p")
             (string/includes? word "c")
             (< (count word) 14)
             (> (count word) 3))
            (and (<= 0 i-pos p-pos c-pos) (< (count word) 7)))))
       (string/join "\n")
       (println)))

(defn main! [] (println "Started.") (run-task!))

(defn reload! [] (.clear js/console) (println "Reloaded.") (run-task!))
