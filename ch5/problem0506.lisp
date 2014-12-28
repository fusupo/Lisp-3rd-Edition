;; The procedure is definetly finding the max something out of an expression...
;; i believe its telling me the number of elements in the sexp with the max
;; elements in s
;; .... but i was wrong...
;; infact its counting the max depth of the neseted expression in s
(defun mystery (s)
  (cond ((null s) 1)
        ((atom s) 0)
         (t (max (+ (mystery (first s)) 1)
                 (mystery (rest s))))))
