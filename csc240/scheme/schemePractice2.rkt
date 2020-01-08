#lang scheme 
(define reverse
  (lambda (lst)
    (if (null? lst)
        '()
        (append (reverse (cdr lst)) (list (car lst))))))

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define length
  (lambda (lst)
    (cond ((atom? lst)
           0)
          ((null? lst)
           0)
          (else
           (+ 1 (length (cdr lst)))))))

(define third
  (lambda (lst)
    (if (null? lst)
        '()
        (if (= (length lst) 3) (car lst) (third (cdr lst))))))
       
(define (member-of e lst)
    (if (null? lst)
        #f
        (if (equal? e (car lst)) #t (member-of e (cdr lst)))))

(define (sum-all lst)
  (if (null? lst)
      0
      (+ (car lst) (sum-all (cdr lst)))))

(define (mult-all lst)
  (if (null? lst)
      1
      (* (car lst) (mult-all (cdr lst)))))

(define (square-list lst)
  (if (null? lst)
      '()
      (cons (* (car lst) (car lst)) (square-list (cdr lst)))))


  