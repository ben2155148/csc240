#lang scheme
(define x 10)
(define y 'symbol)
(define z "string")

(+ (- 5 4) 2)
(+ (* (+ 7 3) 2) 5)
;(+ (* c b) a)
(* (+ 8 2) 3)

(define trip
  (lambda (x)
    (* 3 x)))
"---trip---"
(trip 2)
(trip 3)
(trip 4)

(define fib
  (lambda (x)
    (if (<= x 1)
        1
         (+ (fib (- x 1)) (fib (- x 2))))))
"---fib---"
(fib 10)
(fib 7) 
(fib 9)

(define quad
  (lambda (x)
    (* 4 x)))
"---quad---"
(quad 2)
(quad 5)

(define bloop
  (lambda (x)
    (if(<= x 0) (* (/ 1 2) x) (* 2 x))))
"---bloop---"
(bloop 12)
(bloop -4)

(define mult
  (lambda (x y)
    (* x y)))
"---mult---"
(mult 3 6)
(mult 7 9)
(mult 30 3)

(define bigger
  (lambda (x y)
    (if(> x y) x y)))
"---bigger---"
(bigger 12 3)
(bigger 2 49)

(define absol
  (lambda (x)
    (if(< x 0) (* -1 x) x)))
"---absol---"
(absol -3)
(absol -54)
(absol 23)
(absol 657)




