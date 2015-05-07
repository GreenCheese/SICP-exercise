#lang racket

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expr-log b n)
  (fast-expr-iter 1 b n))

;  (cond ((or (= n 0) (< n 0)) a)
(define (fast-expr-iter a b n)
  (cond ( (= n 0) a)
        ((even? n) (fast-expr-iter a (* b b) (/ n 2)))
        (else (fast-expr-iter (* a b) b (- n 1)))
  ))


(fast-expr-log 7 7)