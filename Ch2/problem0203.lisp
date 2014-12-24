(first (rest (first (rest '((a b) (c d) (e f)))))) ;; d
(first (first (rest (rest '((a b) (c d) (e f)))))) ;; error *E
(first (first (rest '(rest ((a b) (c d) (e f)))))) ;; (a b)
(first (first '(rest (rest ((a b) (c d) (e f)))))) ;; error
(first '(first (rest (rest ((a b) (c d) (e f)))))) ;; first
'(first (first (rest (rest ((a b) (c d) (e f)))))) ;; (first (first (rest (rest ((a b) (c d) (e f))))))
