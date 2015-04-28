#lang racket

(define eps 0.0000000001)

(define (abs x) (
    if (< x 0)
        (- x)
        x
))

(define (pow x n) (
    pow_ x n 1
))

(define (pow_ x n res) (
    if (= n 0)
        res
        (pow_ x (- n 1) (* res x))
))

(define (get_root x n) (
    get_root_ x n 1.0
))

(define (get_root_ x n res) (
    if (> eps (abs (- x (pow res n))))
        res
        (get_root_ x n (* (/ 1 n) (+ (* (- n 1) res) (/ x (pow res (- n 1))))))
))

(get_root 2 2)
