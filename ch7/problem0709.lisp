(defun do-reverse (l)
  (do ((curr l (rest curr))
       (r nil (cons (first curr) r)))
      ((endp curr) r)))

(do-reverse '(a b c d e f g))
