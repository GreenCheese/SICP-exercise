#lang racket

(define (square x)
  (* x x))


(define (sqrt-iter guess oldguess x)
  (if (good-enough_v2? guess oldguess)
      guess
      (sqrt-iter (improve guess x) guess
                 x)))

(define (improve guess x)
  (average guess (/ x (square guess))))

(define (average x y)
  (/ (+ x (* 2 y)) 3))

(define (good-enough_v2? guess oldguess)
  ( < (abs (/ (- guess oldguess) oldguess)) 0.001))


(define (cbrt x)
  (sqrt-iter 1.0 0.0 x))

;(sqrt 0.000001)
(cbrt 27)
;2.9998500000007335
(* 2.9998500000007335 2.9998500000007335 2.9998500000007335)