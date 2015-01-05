(defun letq (vars &rest body)
  (let ((res '()))
    (dolist (a vars res)
      ;;(print res)
      (setf res (append res (list (first a) (second a)))))
    res))

(letq ((<var1> <val1>)
       (<var2> <val2>)) '<body>)

;; I had given up forgetting about MAPCAR, with a hint from teh soluition ,lets
;; try again:

(defmacro letq (vars &rest body)
  `(let ,(mapcar #'(lambda (x)
                     (list (first x)
                           (cons 'qoute (rest x))))
                 vars)
     ,@body))


