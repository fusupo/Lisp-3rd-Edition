(defun make-book (title author classification)
  (list (list 'title title)
        (list 'author author)
        (list 'classification classification)))

(setf books
      (list
       (make-book '(artificial intelligence)
                  '(patrick henry winston)
                  '(techical ai))
       (make-book '(common lisp)
                  '(guy l steele)
                  '(technical lisp))
       (make-book '(moby dick)
                  '(herman melville)
                  '(fiction))
       (make-book '(tom sawyer)
                  '(mark twain)
                  '(fiction))
       (make-book '(the black orchid)
                  '(rex stout)
                  '(fiction mystery))))

(defun find-book-by-title-words (words books)
  (cond ((endp books) nil)
        ((subsetp words (second (assoc 'title (first books)))) (first books))
        (t (find-book-by-title-words words (rest books)))))

(find-book-by-title-words '(dick) books)
