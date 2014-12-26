(and (listp pi) (setf result 'set-in-first-and))    ;; nil
result                                            ;; nil *Error
(and (numberp pi) (setf result 'set-in-second-and)) ;; set-in-second-and
result                                            ;; set-in-second-and
