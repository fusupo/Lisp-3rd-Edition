(defun add (n1 n2)
  (if (zerop n2)
      n1
      (add (1+ n1) (1- n2))))
