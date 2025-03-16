(define (curry-cook formals body)
  (if (null? (cdr formals))  ; If there's only one formal parameter left
      `(lambda (,(car formals)) ,body)  ; Create a lambda with that parameter and the body
      `(lambda (,(car formals))  ; Otherwise, create a lambda with the first parameter
         ,(curry-cook (cdr formals) body))))  ; And recursively curry the rest

(define (curry-consume curry args)
  (if (null? args)
      curry
      (curry-consume (curry (car args)) (cdr args))))

(define-macro (switch expr options)
  (switch-to-cond (list 'switch expr options)))

(define (switch-to-cond switch-expr)
  (cons _________
        (map (lambda (option)
               (cons _______________ (cdr option)))
             (car (cdr (cdr switch-expr))))))
