(length '(plato socrates aristole))         ; 3
(length '((plato) (socrates) (aristotle)))  ; 3
(length '((plato socrates aristotle)))      ; 1
(reverse '(plato socrates aristotle))       ; (aristotle socrates plato)
(reverse '((plato) (socrates) (aristotle))) ; ((aristotle) (socrates) (plato))
(reverse '((plato socrates aristotle)))     ; (plato socrates aristotle) * sunnuvabitch ((plato socrates aristotle))
