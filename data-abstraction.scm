;; Rational Numbers

(define (make-pos x)
  (if (negative? x) (* -1 x) x))

(define (make-neg x)
  (if (negative? x) x (* -1 x)))

(define (make-positive-rat n d)
  (cons (make-pos n) (make-pos d)))

(define (make-negative-rat n d)
  (cons (make-neg n) (make-pos d)))

(define (make-rat n d)
  (if (negative? (* n d))
    (make-negative-rat n d)
    (make-positive-rat n d)))

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat r)
  (newline)
  (display (numer r))
  (display "/")
  (display (denom r)))

(define one-half (make-rat 1 2))
(define one-third (make-rat 1 3))
(define neg-one-fourth (make-rat -1 4))
