(defun keep-first-n (n l)
  (when (> n 0)
      (cons (first l) (keep-first-n (- n 1) (rest l)))))
