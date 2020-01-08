#lang scheme
; Project 4 test module
; YOU SHOULD NOT MODIFY THIS FILE!  If one of your functions does not work
; comment out the call to the test module in your code.
; Your code will be tested with a similar module

(provide test-remove-next-to-last)
(provide test-slope)
(provide test-remove-dups)
(provide test-invert)
(provide test-find-show)
(provide test-find-year)
(provide test-good-shows)
(provide test-eval-poly)
(provide test-get-poly-fun)


(define test-remove-next-to-last
  (lambda (x)
  (begin
    (write "Question 1: remove-next-to-last ")(newline)
    (write (x '(1 -2 4 -8)))(newline)
    (write (x '(1 2 3 4)))(newline)
    (write (x '(2 3 4 5 7 9)))(newline)
    (write (x '(-1 -2 -3 -4 -5)))(newline)
    )))

(define test-slope
  (lambda (x)
  (begin
    (newline)
    (write "Question 2: slope")(newline)
    (write (x '(-4 . -4) '(2 . 2)))(newline)
    (write (x '(1 . 7) '(4 . 11)))(newline)
    (write (x '(-2 . 8) '(3 . -4)))(newline)
    )))
   
(define test-remove-dups
  (lambda (x)
  (begin
    (newline)
    (write "Question 3: remove-dups ")(newline)
    (write (x '(a b c d)))(newline)
    (write (x '(n n n o o o o t b r r r o k e e e e !)))(newline)
    (write (x '(T T T T T T T T T T T)))(newline)
    )))

(define test-invert
  (lambda (x)
  (begin
    (newline)
    (write "Question 4: invert")
    (newline)
    (write (x 'a))(newline)
    (write (x '(1 2 3)))(newline)
    (write (x '(1 2 (3 4) (5 (6 7 (8))) 9)))(newline)
    )))


(define shows '(
                (seinfeld . ("Seinfeld" 1989 8.9))
                (twin_peaks . ("Twin Peaks" 1990 8.9))
                (the_x_files . ("The X-Files" 1993 8.7))
                (friends . ("Friends" 1994 8.9))
                (the_shield . ("The Shield" 2002 8.7))
                (the_wire . ("The Wire" 2002 9.4))
                (firefly . ("Firefly" 2002 9.1))
                (the_walking_dead . ("The Walking Dead" 2010 8.4))
                (game_of_thrones . ("Game of Thrones" 2011 9.4))
                (silicon_valley . ("Silicon Valley" 2014 8.5))
                (mr_robot . ("Mr. Robot" 2015 8.6))
                (atlanta . ("Atlanta" 2016 8.5))
                ))

(define test-find-show
  (lambda (x)
    (begin
      (newline)
      (write "Question 5: find-show")
      (newline)
      (write (x shows 'firefly))(newline)
      (write (x shows 'atlanta))(newline)
      )))

(define test-find-year
  (lambda (x)
    (begin
      (newline)
      (write "Question 5: find-year")
      (newline)
      (write (x shows 'the_shield))(newline)
      (write (x shows 'atlanta))(newline)
      )))

(define test-good-shows
  (lambda (x)
    (begin
      (newline)
      (write "Question 5: good-shows")
      (newline)
      (write (x shows 1.0))(newline)
      (write (x shows 8.9))(newline)
      )))

(define  test-eval-poly
  (lambda (x)
    (let ((poly1 '((1 . 3) (1 . 2) (1 . 1) (1 . 0)))
          (poly2 '((1 . 3) (2 . 2) (3 . 1) (4 . 0))))
      (begin
        (newline)
        (write "Question 6a: eval-poly")(newline)
        (write (x poly1 1))(newline)
        (write (x poly1 -2))(newline)
        (write (x poly1 4))(newline)
        (write (x poly2 1))(newline)
        (write (x poly2 -2))(newline)
        (write (x poly2 4))(newline)
        ))))

(define  test-get-poly-fun
  (lambda (x)
    (let ((poly1 '((1 . 3) (1 . 2) (1 . 1) (1 . 0)))
          (poly2 '((1 . 3) (2 . 2) (3 . 1) (4 . 0))))
      (let
          ((f1 (x poly1))
           (f2 (x poly2)))
        (begin
          (newline)
          (write "Question 6a: get-poly-fun")(newline)
          (write (x poly1))(newline)
          (write (x poly2))(newline)
          (write (f1 1))(newline)
          (write (f1 -2))(newline)
          (write (f1 4))(newline)
          (write (f2 1))(newline)
          (write (f2 -2))(newline)
          (write (f2 4))(newline)
          )))))







