(ns warmdot.repl
  (:require [nrepl.server :as nrepl-server]
            [cider.nrepl :refer [cider-nrepl-handler]]
            [rebel-readline.main :as rebel]
            [clojure.java.io :as io]))

(defn save-port-file
  "Writes a file relative to project classpath with port number so other tools
  can infer the nREPL server port.
  Takes nREPL server map and processed CLI options map.
  Returns nil."
  [server options]
  ;; Many clients look for this file to infer the port to connect to
  (let [port (:port server)
        port-file (io/file ".nrepl-port")]
    (.deleteOnExit port-file)
    (spit port-file port)))

(defn -main []
  (let [server (nrepl-server/start-server :handler cider-nrepl-handler)]
    (println "Started nrepl on port" (:port server))
    (save-port-file server {})
    (rebel/-main)
    (System/exit 0)))
