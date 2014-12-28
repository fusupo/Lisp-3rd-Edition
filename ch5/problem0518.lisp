(last '(a b c d e f g h))

(defun user-defined-last (l)
  (if (endp (rest l))
      l
      (user-defined-last (rest l))))

(user-defined-last '(a b c d e f g h i))
