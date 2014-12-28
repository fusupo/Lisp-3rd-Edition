(defun presentp (a f)
  (cond ((null f) nil)
        ((atom f) (if (eql a f)
                      t
                      nil))
        (t (if (presentp a (first f))
                         t
                         (presentp a (rest f))))))

;; not exactly books solution, but seems to work...
;; from book:

(defun presentp (item s)
  (cond ((eql s item) t)
        ((null s) nil)
        ((atom s) nil)
        (t (or (presentp item (first s))
              (presentp item (rest s))))))

;; definetly more concise
