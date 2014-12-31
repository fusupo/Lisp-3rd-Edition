
(setf l '(18 75 31 180 270 52)
      freezing 32
      boiling 212)

(defun list-outlyer-counts (l)
  (let ((o '(0 0)))
    (dolist (i l
             o)
      (cond ((< i freezing) (setf o (cons  (1+ (first o)) (rest o))))
            ((> i boiling) (setf o (cons (first o) (list  (1+ (first (rest o)))))))
            ))))

(list-outlyer-counts l)

;; * apparently the 'return form' gets evaluated at the end of the dolist loop,
;; lets try again...

(defun loc (l)
  (let ((over 0)
        (under 0))
    (dolist (i l
             (list over under))
      (cond ((< i freezing) (setf over (1+ over)))
            ((> i boiling) (setf under (1+ under)))))))

(loc l)
