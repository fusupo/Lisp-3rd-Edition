(defmacro getq (symbol property)
  `(get ',symbol ,property))
(defmacro putq (symbol property value)
  `(setf (get ',symbol ,property ) ,value))

