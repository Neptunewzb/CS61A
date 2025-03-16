(define (if-program condition if-true if-false)
  (if condition
      if-true
      if-false))

(define (square n) (* n n))

(define (pow-expr base exp) (cond
    ((= exp 0) 1)  ; base case: anything^0 = 1
    ((= exp 1) (list '* base 1))  ; base case: base^1 = base * 1
    ((even? exp) (list 'square (pow-expr base (/ exp 2))))  ; if exp is even: base^exp = (base^(exp/2))^2
    (else (list '* base (list 'square (pow-expr base (/ (- exp 1) 2)))))  ; if exp is odd: base^exp = base * (base^((exp-1)/2))^2
  ))

(define-macro (repeat n expr)
  `(repeated-call ,n (lambda () ,expr)))

; Call zero-argument procedure f n times and return the final result.
(define (repeated-call n f)
  (if (= n 1)
      (f)
      (begin (f) (repeated-call (- n 1) f))))
