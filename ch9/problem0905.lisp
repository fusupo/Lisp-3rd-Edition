(defun echo1 ()
  (loop (print (read))))

(defun echo2 ()
  (loop (print (eval (read)))))

(echo2)
