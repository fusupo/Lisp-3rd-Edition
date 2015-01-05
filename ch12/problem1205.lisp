(defmacro define (f b)
  `(defun ,(first f) ,(rest f) ,body))
