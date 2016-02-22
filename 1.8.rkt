#lang planet neil/sicp

(define (cuberoot-iter guess x)
  (if (good-enough? guess x)
      guess
      (cuberoot-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (cuberoot x)
  (cuberoot-iter 1.0 x))

(cuberoot 64)
