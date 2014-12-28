(defun punctuate (l &optional (n 'period))
  (append l (list n)))

(punctuate '(this is an example))

(punctuate '(is the an example) 'question-mark)
