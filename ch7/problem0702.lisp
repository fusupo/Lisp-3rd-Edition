(setf l '(18 75 31 180 270 52)
      freezing 32
      boiling 212)

(defun count-outlyers-with-count-if (l)
  (count-if #'(lambda (temp)
              (if (or (< temp freezing)
                     (> temp boiling))
                  t
                  nil)) l))

;; * per the book solution, the 'if' form coul dbe removed completeley...i.e. the
;; 'or' form itself would suffice as predicate

(count-outlyers-with-count-if l)
