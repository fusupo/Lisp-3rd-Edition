(defun punctuate (l &rest args)
  (append l args))

(punctuate '(this is an example) 'so 'to 'speak)

(defmacro punctuate-macro (l &rest args)
  `(append ,l ',args))

(punctuate-macro '(this is an example) so to speak)
