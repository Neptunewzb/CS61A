(define (ascending? s) 
    
      (if (or (null? s) (null? (cdr s)))
          #t
          (let ((first (car s))
                (rest (cdr s)))
              (if (> first (car rest))
                  #f
                  (ascending? rest)))))

(define (my-filter pred s)
  (cond
    ((null? s) '())  ; Base case: if the list is empty, return empty list
    ((pred (car s))  ; If the first element satisfies the predicate
     (cons (car s) (my-filter pred (cdr s))))  ; Include it in the result
    (else
     (my-filter pred (cdr s)))  ; Skip the element and continue with the rest
  ))

(define (interleave lst1 lst2) 'YOUR-CODE-HERE)

(define (no-repeats s) 'YOUR-CODE-HERE)
