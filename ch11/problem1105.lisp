(defun distance (city1 city2)
  (let* ((c1 (get city1 'position))
         (c2 (get city2 'position))
         (a (- (first c1) (first c2)))
         (b (- (second c1) (second c2)))
         (dist (sqrt (expt a 2) (expt b 2))))
    dist))