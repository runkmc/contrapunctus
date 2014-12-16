#lang racket
(require pollen/decode txexpr)

(define (page-title . title) `(h1 ,@title))

(define (subtitle . text) `(p ((class "subtitle")) ,@text))

(define (root . elements)
     (make-txexpr 'div '[[id "outer-container"]] (decode-elements elements)))

(provide page-title subtitle root)
