#lang racket

(define (square x)
  (* x x))

(define (sqrt x)
  
  (define (sqrt-iter guess oldguess)
    (if (good-enough_v2? guess oldguess)
        guess
        (sqrt-iter (improve guess) guess)))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (average x y)
    (/ (+ x y) 2))

  (define (good-enough_v2? guess oldguess)
    ( < (abs (/ (- guess oldguess) oldguess)) 0.001))

  (sqrt-iter 1.0 0.0)
)


;(sqrt 0.000001)
(sqrt 100)
