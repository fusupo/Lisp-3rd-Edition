(defun grandfather (person)
  (if (get person 'father)
      (get (person 'father) 'father)
      nil))
