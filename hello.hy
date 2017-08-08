(import [trytond.pool [PoolMeta]])
(import [trytond.model [fields]])
(def --all-- ["Hello"])

(defclass Hello []
  "Hello World with suffix"
  [--name-- "hello"
   --metaclass-- PoolMeta
   suffix (.Char fields "Suffix")]

  (with-decorator classmethod
    (defn default-suffix [class] "!!!")
    )

  
  (defn get-greeting [self name]
    (+ (.get_greeting (super Hello self) name) self.suffix)))
