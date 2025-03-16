(define-macro (assign sym1 sym2 expr1 expr2)
  `(begin
     (define ,sym1 ,expr1)
     (define ___ ___)))

(assign x y (+ 1 1) 3)
(assign x y y x)
(expect x 3)
(expect y 2)


(define-macro (switch expr cases)
    `(let ((val ,expr))
	  ,(cons
	    'YOUR-CODE-HERE
	    (map (lambda (case) (cons
	           'YOUR-CODE-HERE
		       (cdr case)))
		     cases))))
