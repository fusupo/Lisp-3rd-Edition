(defun ancestors (x)
  (when x
    (cons x (append (ancestors (get x 'father))
                    (ancestors (get x 'mother))))))
