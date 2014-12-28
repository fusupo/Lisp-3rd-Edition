(defun skip-first-n (n l)
  (if (zerop n)
      l
      (skip-first-n (- n 1) (rest l))))
