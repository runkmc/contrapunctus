#lang racket

(define (page-title . title) `(h1 ,@title))
(provide page-title)
