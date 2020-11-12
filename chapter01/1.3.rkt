#lang racket

(define (square x) (* x x))

(define (sum-of-square x y) (+ (square x) (square y)))

(define (min x y z)
        (cond ((and (<= x y) (<= x z)) x)
              ((and (<= y x) (<= y z)) y)
              ((and (<= z x) (<= z y)) z)))

(define (sum-of-square-two-max x y z)
        (cond ((= (min x y z) x) (sum-of-square y z))
              ((= (min x y z) y) (sum-of-square x z))
              ((= (min x y z) z) (sum-of-square x y))))