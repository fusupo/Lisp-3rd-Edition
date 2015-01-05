(defun punctuate (l &rest args)
  (append l args))

(punctuate '(this is an example) 'so 'to 'speak)
