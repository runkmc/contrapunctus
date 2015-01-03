#lang racket
(require pollen/decode txexpr)

(define (page-title . title) `(h1 ,@title))

(define (subtitle . text) `(p ((class "subtitle")) ,@text))

(define (root . elements)
     (make-txexpr 'div '[[id "outer-container"]] (decode-elements elements)))

(define (section-title . title) `(h2 ((class "sidebar")) ,@title))

(define (main-section . elements) `(section ((class "main-body")) ,@elements))

(define (sidebar . text) `(p ((class "sidebar")) ,@text))

(define (term . text) `(dfn ,@text))

(provide page-title subtitle root section-title main-section sidebar term)
