#lang planet neil/sicp

(define (square x) (* x x))
(define (square-larger-of-two a b c)
    (cond ((= a (min a b c))
          (+ (square b) (square c)))
          ((= b (min a b c))
          (+ (square a) (square c)))
          (else (+ (square a) (square b)))))