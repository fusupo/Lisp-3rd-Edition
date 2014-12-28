(defun fib (n)
  (let* ((sqrt5 (sqrt 5))
         (binet (/ (+ 1 sqrt5) 2))
         (ibinet (/ (- sqrt5 1) 2))
         (nplusone (+ n 1)))
    (/ (+ (expt binet nplusone)(expt ibinet nplusone)) sqrt5)))

;; books answer:
(defun fibonacci (n)
  (round (/ (- (expt (/ (+ 1 (sqrt 5)) 2) (+ n 1))
               (expt (/ (- 1 (sqrt 5)) 2) (+ n 1)))
            (sqrt 5))))

;; think mine works, like using 'let' better'n repeating the 'sqrt 5's and '+ n 1's
;; ...D.R.Y.

(fibonacci 8)
(fib 8)
