(defun count-atoms (expression)
  (if (atom expression)
      1
      (+ (count-atoms (first expression))
         (count-atoms (rest expression)))))

(defun count-atoms (expression)
             (cond ((atom expression) 1)
                   ((null expression) 0)
                   (t (+ (count-atoms (first expression))
                         (count-atoms (rest expression))))))

(trace count-atoms)
(untrace)
(count-atoms '((this is) (a test)))
(step (count-atoms nil))
(count-atoms nil)

;;; ----------------------------------------------

(defun current (n)
  (if (< n 2)
      1
      (+ (minus-one n) (minus-two n))))

(defun minus-one (n)
  ;;(when (< (- n 1) 1) (break "N is too small in MINUS-ONE"))
  (current (- n 1)))

(defun minus-two (n)
  ;;(when (< (- n 2 ) 1) (break "N is too small in MINUS-TWO"))
  (current (- n 2)))

(trace current minus-one minus-two)
(time (current 10))

(dribble)
