#lang scheme

(define (square x)
  (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (even? a)
  (= (remainder a 2) 0))

(define (runtime) (current-inexact-milliseconds))

(define (prime? a)
  (= (smallest-divisor a) a))

(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time) n)
      false))

(define (report-prime elapsed-time n)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time)
  true)


(define (search-for-primes start_int finish_int count)
  (cond ((or (> start_int finish_int) (= count 0))  (newline))
        ((even? start_int) (search-for-primes (+ start_int 1) finish_int count))
        (else (if (run-search-for-primes start_int) (search-for-primes (+ start_int 2) finish_int (- count 1))
                  (search-for-primes (+ start_int 2) finish_int count)))))
  
(define (run-search-for-primes prime_test)

  (timed-prime-test prime_test)

  )
                               
            

(search-for-primes 1000 9999 3)
(search-for-primes 10000 99999 3)
(search-for-primes 100000 999999 3)
(search-for-primes 1000000 9999999 3)

(search-for-primes 10000000 90000000 3)
(search-for-primes 100000000 900000000 3)
(search-for-primes 1000000000 9000000000 3)
(search-for-primes 10000000000 90000000000 3)

(search-for-primes 100000000000 900000000000 3)
(search-for-primes 1000000000000 9000000000000 3)
(search-for-primes 10000000000000 90000000000000 3)
(search-for-primes 100000000000000 900000000000000 3)

;======================================================
;THE RESULT IS:
;
;1009 *** 0.0
;1013 *** 0.0
;1019 *** 1.000732421875
;
;10007 *** 0.0
;10009 *** 0.0
;10037 *** 0.0
;
;100003 *** 0.0
;100019 *** 0.0
;100043 *** 0.0
;
;1000003 *** 0.0
;1000033 *** 1.000732421875
;1000037 *** 0.0
;
;10000019 *** 0.0
;10000079 *** 1.000244140625
;10000103 *** 0.0
;
;100000007 *** 1.000732421875
;100000037 *** 1.000732421875
;100000039 *** 1.000732421875
;
;1000000007 *** 2.00146484375
;1000000009 *** 3.001708984375
;1000000021 *** 2.001953125
;
;10000000019 *** 56.04052734375
;10000000033 *** 56.040283203125
;10000000061 *** 94.066162109375
;
;100000000003 *** 211.14892578125
;100000000019 *** 214.150634765625
;100000000057 *** 221.156494140625
;
;1000000000039 *** 735.5205078125
;1000000000061 *** 713.505126953125
;1000000000063 *** 681.482177734375
;
;10000000000037 *** 2155.525390625
;10000000000051 *** 2158.527587890625
;10000000000099 *** 2976.106201171875
;
;100000000000031 *** 6640.699951171875
;100000000000067 *** 6839.840576171875
;100000000000097 *** 6838.83984375