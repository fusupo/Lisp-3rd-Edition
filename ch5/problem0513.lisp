(defun tail-recursive-expt (n p &optional (acc 1))
  (if (zerop p)
      acc
      (tail-recursive-expt n (1- p) (* acc n))))


(tail-recursive-expt 2 3)
