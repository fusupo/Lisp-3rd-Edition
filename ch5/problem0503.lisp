(defun keep-first-n-cleverly (n l)
  (keep-first-n-aux (- n 1) (rest l) (list (first l))))

(defun keep-first-n-aux (n l m)
  (if (zerop n)
      m
      (keep-first-n-aux (- n 1) (rest l) (append
                                          m (list (first l))))))

;; dont think my answer is 'wrong' but heres the solution from the book
;; (defun keep-first-n-cleverly (l n)
;;   keep-first-n-cleverly-aux l n nil))

;; (defun keep-first-n-cleverly-aux (l n result)
;;   (if (zerop n)
;;      (reverse result)
;;      (keep-first-n-cleverly-aux (rest l)
;;                                 (- n 1)
;;                                 (cons (first l) result))))
