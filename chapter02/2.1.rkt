#lang racket

(require rackunit)

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

; Solution

(define (make-rat n d)
  (let ((sign (if (> d 0) 1 -1)))
    (cons (* n sign) (* d sign))))

; Test
(check-equal? (numer (make-rat 1 -2)) -1)

(check-equal? (numer (make-rat -1 -2)) 1)

(check-equal? (numer (make-rat -1 2)) -1)
