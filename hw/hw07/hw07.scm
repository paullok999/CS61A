(define (square n) (* n n))

(define (pow base exp) 
  (if (= exp 1) base 
    (if (even? exp) 
      (square (pow base (/ exp 2))) 
      (* base (square (pow base (/ (- exp 1) 2))))
    )
  )
)

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y x))
        (repeatedly-cube (- n 1) (* y y y)))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))
