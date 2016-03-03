#lang planet neil/sicp


;; computes the cube
(define (cube x) (* x x x))

;; computes the sum of the integers from a through a through b
;(define (sum-integers a b)
 ; (if (> a b)
  ;    0
   ;   (+ a (sum-integers (+ a 1) b))))

;; computes the sum of the cubes  of the integers in the given range
;(define (sum-cubes a b)
 ; (if (> a b)
  ;   0
   ;  (+ (cube a)
    ;    (sum-cubes (+ a 1) b))))

;; computes the sum of the sequence of terms in a series...which converges to pi/8
;(define (pi-sum a b)
 ; (if (> a b)
  ;    0
   ;   (+ (/ 1.0 (* a (+ a 2)))
    ;     (pi-sum (+ a 4) b))))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))

(sum-cubes 1 10)

(define (identity x) x)
(define (sum-integers a b)
  (sum identity a inc b))

(sum-integers 1 10)

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))

(* 8 (pi-sum 1 10000)) ;; should be approximately equal to pi as we the range increases to infinity

(define (integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
  dx))

(integral cube 0 1 0.01)
;; as dx becomes smaller we should get a better approximate as the integral of x^3 between 0 and 1 is 0.25
(integral cube 0 1 0.000001)



