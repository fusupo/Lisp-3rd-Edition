(defun tower-of-hanoi (disks from to spare)
  (if (endp disks)
      0
      (progn (tower-of-hanoi (rest disks) from spare to)
             (format t "move ~a from ~a to ~a ~%" (first disks) from to)
             (tower-of-hanoi (rest disks) spare to from))))

(tower-of-hanoi '(3 2 1) 'a 'b 'c)
