;; my maths is weak...the word 'factorial' is throwing me off
(defun do-fact (n)
  (do ((i 0 (1+ i))
       (r 1 (* (1+ i) r)))
      ((= i n) r)))

;; not exactly the same as books answer, pretty sure this one works,
;; arguably just as concise (with a bit of refactoring maybe moreso)
;; book version below:

(defun xxx (n)
  (do ((res 1 (* n res))
       (n n (1- n)))
      ((zerop n) res)))

(xxx 4)
(do-fact 4)
