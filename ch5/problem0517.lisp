(defun user-defined-nthcdr (n l)
  (if (zerop n)
      l
      (user-defined-nthcdr (- n 1) (rest l))))

(user-defined-nthcdr 5 '(a b c d e f g h i))
(user-defined-nthcdr 5 '())

(nthcdr 5 '(a b c d e f g h i))
(nthcdr 5 '())
