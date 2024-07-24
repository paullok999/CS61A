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

(define (interleave lst1 lst2)
 (cond 
  ((null? lst1) lst2)
  ((null? lst2) lst1)
  (else (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))
 )
)

(define (no-repeats s) 
 (cond 
  ((null? s) '())
  ((= 1 (ops s (car s))) (cons (car s) (no-repeats (cdr s))))
  (else (no-repeats (cdr s)))
 )
)

(define (ops s x)
 (cond 
  ((null? s) 0)
  ((= (car s) x) (+ 1 (ops (cdr s) x)))
  (else (ops (cdr s) x))
 )
)