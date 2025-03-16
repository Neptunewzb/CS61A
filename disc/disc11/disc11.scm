(define-macro (assign sym1 sym2 expr1 expr2)
  `(begin
     (define temp ,expr2)  ; Evaluate expr2 first and store in a temporary variable
     (define ,sym1 ,expr1) ; Bind sym1 to expr1
     (define ,sym2 temp))) ; Bind sym2 to the previously stored value of expr2

(assign x y (+ 1 1) 3)
(assign x y y x)
(expect x 3)
(expect y 2)


(define-macro (switch expr cases)
  `(let ((val ,expr))
     ,(cons
       'cond
       (map (lambda (case) (cons
              `(equal? val ,(car case))
              (cdr case)))
            cases))))