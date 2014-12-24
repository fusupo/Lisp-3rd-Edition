;; Problem 2-2
(first '(p h w))                      ;; p
(rest '(b k p h))                     ;; (k p h)
(first '((a b) (c d)))                ;; (a b)
(rest '((a b) (c d)))                 ;; ((c d))
(first (rest '((a b) (c d))))         ;; (c d)
(rest (first '((a b) (c d))))         ;; (b)
(rest (first (rest '((a b) (c d)))))  ;; (d)
(first (rest (first '((a b) (c d))))) ;; b
