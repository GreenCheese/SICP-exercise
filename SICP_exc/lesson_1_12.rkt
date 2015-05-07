#lang racket


(define (pastr_line level)
  pastr_line_recur level 0
  )

(define (pastr_line_recur level count)
  (pastr_elem level pos)
  (pastr_line_recur level (+ count 1)))

(define (pastr_elem level pos)
  (cond ((or  (= pos 1) (= pos level)) 1)
        (else (+ (pastr_elem (- level 1) (- pos 1)) (pastr_elem (- level 1) pos)))))

(pastr_elem 5 1)
(pastr_elem 5 2)
(pastr_elem 5 3)
(pastr_elem 5 4)
(pastr_elem 5 5)

(pastr_elem 2 1)
(pastr_elem 2 2)