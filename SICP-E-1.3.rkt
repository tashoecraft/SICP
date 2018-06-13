#lang racket
(define (square x)
  (* x x))

(define (sum-square x y z)
  (+ (square x) (square y) (square z)))