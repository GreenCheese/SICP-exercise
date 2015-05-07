#lang racket

;(sqrt 0.000001)
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
;(A 3 3)
;(A 2 4)


(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (f (- n 2)) (f (- n 3))))))


(define (f_iter prev1 prev2 prev3 counter limit)
  (cond ((= counter limit)prev1)
        (else (f_iter (+ prev1 prev2 prev3) prev1 prev2 (+ counter 1) limit))))

(define (f2 n)
  (cond ((< n 3) n)
        (else (f_iter 3 2 1 3 n))))
  
  

;(f 30)
(f2 3)