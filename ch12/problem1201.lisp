(defmacro put (symbol value property-name)
  `(setf (get ,symbol ,property-name) ,value))

;; think theres a typo in the book...either the problme or in the solution
