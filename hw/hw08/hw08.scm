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

(define (interleave lst1 lst2) 
    (cond ((null? lst1) lst2)
            ((null? lst2) lst1)
            (else(cons  (car lst1) 
                        (cons (car lst2) 
                              (interleave(cdr lst1) (cdr lst2)))))
    ))

(define (no-repeats s) 
    (cond((null? s) '())
            (else
                    (cons  (car s)
                            (no-repeats 
                            (filter 
                                (lambda (x) (not (= x (car s)))) (cdr s))))
        ))
    )
