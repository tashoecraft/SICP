#lang racket
(define (cube-iter guess previous x)
  (if (good-enough? guess previous)
      guess
      (cube-iter (improve guess x) guess
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess previous)
     (display guess) (newline)
  (< (abs (- guess previous)) 0.0001))

(define (square x)
  (* x x))

(define (cube x)
  (cube-iter 1.0 0 x))