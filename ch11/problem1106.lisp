(setf checker-board
      (make-array '(8 8)
                  :initial-contents
                  '((X B X B X B X B)
                    (B X B X B X B X)
                    (X B X B X B X B)
                    (E X E X E X E X)
                    (X E X E X E X E)
                    (W X W X W X W X)
                    (X W X W X W X W)
                    (W X W X W X W X))))

(defun static-value (checker-board)
  (let ((white-count 0)
        (black-count 0))
    (dotimes (n 8)
      (dotimes (m 8)
        (let ((current (aref checker-board n m)))
          (cond ((eq current 'B) (setf black-count (+ 1 black-count)))
                ((eq current 'W) (setf white-count (+ 1 white-count)))
                ((eq current 'B-KING) (setf black-count (+ 2 black-count)))
                ((eq current 'W-KING) (setf white-count (+ 2 white-count)))))))
    (- black-count white-count)))

(static-value checker-board)