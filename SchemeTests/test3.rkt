#lang racket

(define (square x)
  (* x x))

;(define (sqrt-iter guess x)
;  (if (good-enough_v2? guess x)
;      guess
;      (sqrt-iter (improve guess x)
;                 x)))

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
  ( < (abs (- guess oldguess)) 0.001))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

;(sqrt 0.000001)
