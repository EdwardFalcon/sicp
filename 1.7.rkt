#lang racket

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x diff)
  (< (abs (- guess (improve guess x))) diff))


(define (sqrt-iter guess x diff)
  (if (good-enough? guess x diff)
      guess
      (sqrt-iter (improve guess x) x diff)))

(define (sqrt x)
  (sqrt-iter 1.0 x 0.0001))
