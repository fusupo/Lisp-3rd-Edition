(defun clever-count-atoms (l &optional (acc 0))
  (cond ((null l) acc)
        ((atom l) (1+ acc))
        (t (clever-count-atoms (rest l)
                               (clever-count-atoms (first l) acc)))))
;; * totally had to look at the answer for this one

(clever-count-atoms '(sqrt (expt x 2) (expt y 2)))
