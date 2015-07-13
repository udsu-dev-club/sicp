#lang racket

(define (fib i) (
    fib_ 1 0 i
))

(define (fib_ a b i) (
    if (= i 0)
        b
        (fib_ (+ a b) a (- i 1))
))

(fib 6)

(define (hyper_fib i) (
    hyper_fib_ 2 1 0 i
))

(define (hyper_fib_ a b c i) (
    if (= i 0)
        c
        (hyper_fib_ (+ a b c) a b (- i 1))
))

(hyper_fib 6)

(define (pascal row col) (
    cond ((< row col) #f)
          ((or (= row 1) (= row col)) 1)
          (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))
))

(pascal 3 2)
