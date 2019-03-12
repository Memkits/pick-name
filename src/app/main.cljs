
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
          (let [letters (set (string/split word ""))]
            (and (string/starts-with? word "m")
                 (contains? letters "c")
                 (< (count word) 7)
                 (> (count word) 3)))))
       (string/join "\n")
       (println)))

(defn main! [] (println "Started.") (run-task!))

(defn reload! [] (.clear js/console) (println "Reloaded.") (run-task!))
