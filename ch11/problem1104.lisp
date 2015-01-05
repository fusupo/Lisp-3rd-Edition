(defun connect (city1 city2)
  (let ((n1 (get city1 'neighboors))
        (n2 (get city2 'neighboors))))
  (if (and (member city2 n1) (member cit1 n2))
      nil
      (progn
        (set n1 (cons city2 n1))
        (set n2 (cons city1 n2)))))

;; got a number of things wrong here....first iff, forgot about the part where the result
;; need to be T of NIL depending on existance of Connection
;; Secondly, perhaps more important, the set form is more like '(setf (get city1 'neighboors) (cons city2 n1))
;; i.e.

(defun connect (city1 city2)
  (let ((n1 (get city1 'neighboors))
        (n2 (get city2 'neighboors))
        (res nil))
    (unless (member city2 n1)
      (setf (get city1 'neighboors) (cons city2 n1))
      (setf res t))
    (unless (member city1 n2)
      (setf (get city2 'neighboors) (cons city1 n2)))))
