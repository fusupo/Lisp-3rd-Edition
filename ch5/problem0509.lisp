(defun squash (l)
  (let ((f (first l))
        (r (rest l)))
    (cond ((atom f)
           (cond ((null l) nil)
                  ((atom l) (list f r))
                  (t (cons f (squash r)))))
          ((null f) nil)
          (t (append (squash f)
                     (squash r))))))

(squash '(a (a (a (a b))) (((a b) b) b)))

;; feels like I'm cheating with the REPL, but I'm sure thats the point of it...
;; also feels like my solution'll be again less concise than the books version
;; indeed this seems to be my problem with the lisp...getting working solutions,
;; but getting them concise and elegant.

;; ...yes, much less concise:
(defun squash (s)
  (cond ((null s) nil)
        ((atom s) (list s))
        (t (append (squash (first s))
                   (squash (rest s))))))
