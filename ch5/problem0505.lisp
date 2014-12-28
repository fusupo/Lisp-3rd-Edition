(defun tower-of-hanoi (l)
  (if (endp l)
      0
      (+ (tower-of-hanoi (rest l))
         1
         (tower-of-hanoi (rest l)))))

;; tho I cheated and had to look at the answer for hint... my intended interpretation
;; being a bit more literal than this solution
