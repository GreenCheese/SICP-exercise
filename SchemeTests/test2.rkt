#lang racket

(define (square x) (* x x))

(define (sum_of_squares x y)
  (+ (square x) (square y)))

(define (f a)
  (sum_of_squares (+ a 1) (* a 2)))



(define (abs x)
  (cond ((< x 0) (- x))
        ((> x 0) x)
        ((= x 0) 0)))
 
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
b
a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))



(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
(+ a 1))

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

(/ 37 150)
(define (<= x y)
  (or (< x y) (= x y)))

(define (sum-of-squares-of-two-max x y z)
  (cond ((and (<= x z) (<= x y)) (+ (square y) (square z)))
        ((and (<= y z) (<= y x)) (+ (square x) (square z)))
        ((and (<= z x) (<= z y)) (+ (square y) (square x)))))


(sum-of-squares-of-two-max 3 1 2)

