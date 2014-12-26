(defun rotate-left (l)
  (append (rest l) (first l))) ; * Damnit: (append (rest l) (list (first (l))))
