;;1301
(defstruct rock
  (color 'grey)
  (size 'pebble)
  (worth 'nothing))

;;1302
(setf high-hopes (make-rock :color 'gold
                            :worth 'high))

;;1302
(setf (rock-worth high-hopes) 'nothing)
