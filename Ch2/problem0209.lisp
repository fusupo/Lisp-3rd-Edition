(length '((car chevrolet) (drink coke) (cereal wheaties)))  ; 3
(reverse '((car chevrolet) (drink coke) (cereal wheaties))) ; ((cereal wheaties) (drink coke) (car chevrolet))
(append '((car chevrolet) (drink coke))
          (reverse '((car chevrolet) (drink coke))))       ; ((car chevrolet) (drink coke) (drink coke) (car chevrolet))
