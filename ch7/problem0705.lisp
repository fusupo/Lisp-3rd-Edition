(defun dolist-member (i l)
  (dolist (c l)
    (when (equal i c) (return t))))

(dolist-member 'x '(a b c d e f g h i))
