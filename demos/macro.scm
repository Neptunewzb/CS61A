(define fact (lambda (n)
  (if (zero? n) 1 (* n (fact (- n 1))))))
(fact 5)

(begin
  (define original fact)
    (define fact (lambda (n)
                  (print(list 'fact n))
                  (original n)))
  (define result (fact 5))
  (define fact original)
  result)

(fact 5)

(define-macro (trace expr)
  (define operator (car expr))
    `(begin
       (define original ,operator)
       (define ,operator (lambda (n)
                          (print (list ',operator n))
                          (original n)))
       (define result ,expr)
       (define ,operator original)
       result))

(trace (fact 5))

(fact 5)