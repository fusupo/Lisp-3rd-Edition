(defun do-member (i l)
  (do ((curr l (rest curr)))
      ((or (endp curr)
          (eql i (first curr)))
          curr)))

(do-member 'f '(a b c d e f g h i))
