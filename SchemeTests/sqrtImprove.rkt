#lang racket

(define (square x)
  (* x x))


(define (sqrt-iter guess oldguess x)
  (if (good-enough_v2? guess oldguess)
      guess
      (sqrt-iter (improve guess x) guess
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough_v2? guess oldguess)
  ( < (abs (/ (- guess oldguess) oldguess)) 0.001))


(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

;(sqrt 0.000001)
(sqrt 10000000000000)
