(defun tail-recursive-reverse (l &optional (acc '()))
  (if (endp l)
      acc
      (tail-recursive-reverse (rest l) (append (list (first l)) acc))))
;; *  this works, but could've used (cons (first l) acc)

(tail-recursive-reverse '(a b c d e f g h i))
