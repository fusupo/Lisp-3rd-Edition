(defun dolist-reverse (l)
  (let ((r '()))
    (dolist (i l
             r)
      (setq r (append (list i) r)))))

;; * that it works the way it does...could've just used '(setq r (cons i r))'

(dolist-reverse '(a b c d e f g h i))
