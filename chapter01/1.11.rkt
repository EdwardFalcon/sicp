#lang racket

; recursive process
(define (f-r n)
  (if (< n 3)
      n
      (+ (f-r (- n 1)) (f-r (- n 2)) (f-r (- n 3)))
      ))
; iterative process
(define (f-i n)
  (define (f-iter n a b c)
    (cond
      ((< n 3)
       n)
      ((= n 3)
       (+ a b c))
      (else
       (f-iter (- n 1) b c (+ c b a)))))
  (f-iter n 0 1 2))