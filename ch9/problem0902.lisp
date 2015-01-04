(with-open-file (patient-stream "patients.lisp"
                                :direction :input)
  (do ((patient (read patient-stream nil 'eof)
                (read patient-stream nil 'eof)))
      ((eq patient 'eof))
    (print patient)))
