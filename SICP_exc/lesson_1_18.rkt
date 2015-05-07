#lang racket

;Итеративный процесс умножения при помощи удвоения и деления пополам, затрачивающий логарифмическое число шагов

(define (* a b)
  (mult 0 a b)
  )


(define (mult c a b)
  (cond ((= b 0) c)
        ((even? b) (mult c (double a) (halve b)))
        (else (mult (+ c a) a (- b 1)))
        ))
      

(define (double x)
  (+ x x)
  )
(define (halve x)
  (/ x 2)
  )

(define (even? n)
  (= (remainder n 2) 0))


(* 5 6)