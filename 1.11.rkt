#lang planet neil/sicp
;; recursive process

(define (f-recursive n)
  (cond ((< n 3) n)
      (else (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3)))))))

(f-recursive 4)
(f-recursive 5)

;; iterative process
(define (f-iter n)
  (cond ((< n 3) n)
        (else (helper 2 1 0 3 n))))

(define (helper fn1 fn2 fn3 counter n)
  (define value (+ fn1 (* 2 fn2) (* 3 fn3)))
  (cond ((= counter n) value)
            (else (helper value fn1 fn2 (inc counter) n))))


(f-iter 4)
