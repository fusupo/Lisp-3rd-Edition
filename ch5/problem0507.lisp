;; in reverse this time
(defun strange (l)
  (cond ((null l) nil)
        ((atom l) l)
        (t (cons (strange (first l))
                 (strange (rest l))))))

;; seemingly isnt doing anything, reconstructing a list, in same order, piece
;; piece..(?)

;; not far from teh descript of solution, i.e. 'STRANGE returns a copy of the sexp
;; it is given'
