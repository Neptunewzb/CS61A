(define (over-or-under num1 num2) 
    (cond((< num1 num2) -1)
         ((= num1 num2) 0)
         (else 1)))

(define (make-adder num) 
    (lambda (inc) (+ inc num))
)

(define (composed f g) 
    (define (fgx x)
        (f (g x))
    )
    fgx
)

(define (repeat f n)
    (if (<= n 0)
        (lambda (x) x)
        (if (= n 1)
            f
            (composed f (repeat f (- n 1))))
    )
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
    (if (< a b)
        (gcd b a))
    (if (= b 1)
        1)
    (if (= (modulo a b) 0)
        b
        (let ((r (modulo a b)))
        (gcd b r)))
)
