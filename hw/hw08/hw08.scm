(define (ascending? s) 
 (if (or (null? s) (null? (cdr s))) #t
  (if (<= (car s) (car (cdr s)))
   (ascending? (cdr s)) #f
  )
 )
)



(define (my-filter pred s) 
    (if (null? s) '()
        (if (pred (car s)) 
            (cons (car s) (my-filter pred (cdr s)))
            (my-filter pred (cdr s))
        )
    )
)

(define (interleave lst1 lst2) 'YOUR-CODE-HERE)

(define (no-repeats s) 'YOUR-CODE-HERE)
