(defun check-temp (v)
  (cond ((> v 100) 'rediculously-hot)
        ((< v 0) 'rediculously-cold)
        (t 'OK)))
