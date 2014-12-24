(append '(a b c) '()) ; (a b c)
(list '(a b c) '())   ; ((a b c) ()) *in fact: ((a b c) nil)
(cons '(a b c) '())   ; (a b c)      *indeed: ((a b c)) 
