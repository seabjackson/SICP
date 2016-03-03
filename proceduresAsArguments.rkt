#lang planet neil/sicp


;; computes the cube
(define (cube x) (* x x x))

;; computes the sum of the integers from a through a through b
(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))

;; computes the sum of the cubes  of the integers in the given range
;(define (sum-cubes a b)
;  (if (> a b)
;      0
;     (+ (cube a)
;        (sum-cubes (+ a 1) b))))

;; computes the sum of the sequence of terms in a series...which converges to pi/8
(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1.0 (* a (+ a 2)))
         (pi-sum (+ a 4) b))))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))

(sum-cubes 1 10)


