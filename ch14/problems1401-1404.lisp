(defclass article ()
  ((title :accessor article-title :initarg :title)
   (author :accessor article-author :initarg :author)))

(defclass computer-article (article) ())
(defclass business-article (article) ())
(defclass political-article (article) ())

(defclass friend ()
  ((name :accessor friend-name :initarg :name)))

(defclass hacker-friend (friend) ())
(defclass entrepreneur-friend (friend) ())
(defclass philosopher-friend (friend) ())

(setf articles
      (list (make-instance 'business-article
                           :title "Memory Prices Down")
            (make-instance 'computer-article
                           :title "Memory Speeds Up")
            (make-instance 'political-article
                           :title "Memory Impugned")))

(setf friends
      (list (make-instance 'hacker-friend
                           :name 'Dan)
            (make-instance 'hacker-friend
                           :name 'Gary)
            (make-instance 'entrepreneur-friend
                           :name 'Philip)
            (make-instance 'philosopher-friend
                           :name 'David)))

(defun print-notification (article friend)
       (format t "~%Tell ~a about \"~a.\""
               (friend-name friend)
               (article-title article))
       t)

(dolist (friend friends)
  (dolist (article articles)
    (print-notification article friend)))

(defmethod process ((friend hacker-friend)
                    (article computer-article))
  (print-notification article friend))

(defmethod process ((friend entrepreneur-friend)
                    (article business-article))
  (print-notification article friend))

(defmethod process ((friend philosopher-friend)
                    (article article))
  (print-notification article friend))

(defmethod process ((friend t)
                    (article t)))

(dolist (friend friends)
  (dolist (article articles)
    (process friend article)))

;;1401
(defmethod process ((friend philosopher-friend)
                    (article computer-article)))

;;1402
(defclass music-article (article) ())

(defmethod process ((friend t)
                    (article music-article))
  (print-notification friend article))

;;
(defclass stocks-article (business-article) ())
(defclass new-stocks-article (stocks-article) ())

(defmethod process ((friend entrepreneur-friend)
                    (article stocks-article)))

(defmethod process ((friend entrepreneur-friend)
                    (article new-stocks-article))
  (print-notification article friend))

(process
 (make-instance 'entrepreneur-friend :name 'Jack)
 (make-instance 'stocks-article :title "Stock Prices Up"))

(process
 (make-instance 'entrepreneur-friend :name 'Jill)
 (make-instance 'new-stocks-article :title "New-Stock Prices Up"))

(defclass retired-hacker-friend (hacker-friend) ())

(defmethod process ((friend retired-hacker-friend)
                    (article business-article))
  (print-notification article friend))

(defmethod process ((friend hacker-friend)
                    (article stocks-article)))

(process
 (make-instance 'retired-hacker-friend :name 'test-friend)
 (make-instance 'stocks-article :title "Test Article"))

;;

(defclass computer-political-article
    (computer-article political-article)
  ())

(defmethod process ((friend hacker-friend)
                    (article political-article)))

(process
 (make-instance 'hacker-friend :name 'test-friend)
 (make-instance 'computer-political-article :title "Computer Politics Article Test"))

;;1403
(defclass political-computer-article
    (political-article computer-article)
  ())

(process
 (make-instance 'hacker-friend :name 'test-friend)
 ;; once again I think theres a typo in the text
 ;; this line: (make-instance 'computer-political-article :title "Computer Political Article Test"))
 ;; is to read:
 (make-instance 'political-computer-article :title "Computer Political Article Test"))

;;where the answer to teh question asked are as follows:
;; computer-political-article   ; Split
;; political-article            ; Leftmost superclass.
;; computer-article             ; Rightmost superclass.
;; article                      ; Join
;; standard-object              ; Implicit superclass.
;; t                            ; Implicit superclass.

;; no...nothing should be printed..on account of 'polotical-article' class Precedence


;;

(setf philip (third friends))
(defmethod process ((friend (eql philip))
                    (article article)))

;; 1404
(setf special-case-article
      (make-instance 'business-article :title "Squashing Friends"))
(defmethod process ((friend friend)
                    (article (eql special-case-article))))

;; the answer is something about the class precedence algorithm never reaching the
;; second param to filter on that specific article. Specifically that the algorithm
;; found an apropriately specific version of the method over the first parameter
;; e.g. entrepreneur-friend :: business-article

