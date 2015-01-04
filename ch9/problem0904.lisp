(defun nauseated-p (description)
  (member 'nausea (second description)))

(with-open-file (patient-stream "patients.lisp"
                                :direction :input)
  (with-open-file (nausea-stream "nausea.lisp"
                                 :if-exists :supersede
                                 :direction :output)
    (do ((patient-description (read patient-stream nil)
                              (read patient-stream nil))
         (patient-no 1
                     (+ patient-no 1)))
        ((not patient-description))
    (if (nauseated-p patient-description)
        (format nausea-stream "Patient ~a is nauseous.~%" patient-no)
        (format nausea-stream "Patient ~a is not nauseous.~%" patient-no)))))
