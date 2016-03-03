#lang planet neil/sicp


;; computes the cube
(define (cube x) (* x x x))

;; computes the sum of the integers from a through a through b
(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))

;; computes the sum of the cubes  of the integers in the given range
(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (cube a)
         (sum-cubes (+ a 1) b))))

;; computes the sum of the sequence of terms in a series...which converges to pi/8
(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1.0 (* a (+ a 2)))
         (pi-sum (+ a 4) b))))

