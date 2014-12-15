#lang racket

(define (page-title . title) `(h1 ,@title))
(define (subtitle . text) `(p ((class "subtitle")) ,@text))
(provide page-title subtitle)
