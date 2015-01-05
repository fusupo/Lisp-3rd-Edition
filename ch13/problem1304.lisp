(defstruct stud
  (size '2x4)
  (length 8)
  (strength 'medium))

(defstruct (oak-stud (:include stud (strength 'high))))
