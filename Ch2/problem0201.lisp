;; Problem 2-1

ATOM                    ;;-- atom
(THIS IS AN ATOM)       ;;-- atom    *list, this was a typo
(THIS IS AN EXPRESSION) ;;-- list
((A B) (C D)) 3 (3)     ;;-- neither
(LIST 3)                ;;-- list
(/ (+ 3 1) (- 3 1))     ;;-- list
)(                      ;;-- neither
((()))                  ;;-- list
(() ())                 ;;-- list
((())                   ;;-- neither
())(                    ;;-- neither
((ABC                   ;;-- neither       
