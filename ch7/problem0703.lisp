(setf l '(18 75 31 180 270 52)
      freezing 32
      boiling 212)

(defun list-outlyers (l)
  (let ((o nil))
    (dolist (i l
             o)
      (cond ((or (< i freezing)
                (> i boiling)) (push i o))))))

(list-outlyers l)

;; * for some reason, books solution uses a (setf o (cons i o)), where i just use
;; (push i o)...dunno why they'd go the long way towards it...
