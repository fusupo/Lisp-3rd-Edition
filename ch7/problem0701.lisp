(defun dotimes-factorial (n)
  (let ((res 1))
    (if (zerop n) res
        (dotimes (i n res)
          (setf res (+ res (dotimes-factorial (1- n))))))))

;; * the book is worded funny + i don't have the basic mathmatical understanding
;; of factorial, as I should...the above is my translation of what whas described
;; below, the solution....as per usual, my overriding my intuition to make it simple
;; has caused my failure

(defun xxx (n)
  (let ((res 1))
    (dotimes (c n res)
      (setf res (* (+ 1 c) res)))))

(xxx 5)
(dotimes-factorial 5)
