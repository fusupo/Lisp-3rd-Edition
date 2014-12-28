(defun fibonacci (n &optional (prev 0) (curr 1))
  (if (or (= 1 n) (= 0 n))
      curr
      (fibonacci (1- n) curr (+ prev curr))))

(fibonacci 12)
