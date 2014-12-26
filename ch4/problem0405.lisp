(defun my-abs (x)
  (if (equal nil (plusp x))
      (- x)
      x))

(defun my-min (a b)
  (if (< a b)
      a
      b))

(defun my-max (b a)
  (if (< a b)
      b
      a))
