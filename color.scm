(define (average . numbers)
  (/ (apply + numbers) (length numbers)))

; Weighted Average to calculate for Alpha Transparency and blending
(define (weighted-average . numbers)
  (apply + (* (car (car numbers)) (car (cdr numbers))))

; Work on translating rgb triple to integer
(define (rgb color))

(define (alpha-transparency . numbers)
  (weighted-average . numbers))

; Blend Modes
(define (multiply color-1 color-2)
  (* color-1 color-2))

(define (screen color-1 color-2)
  (- 1 (* (- 1 color-1) (- 1 color-2))))

(define (darken color-1 color-2)
  (if (< color-1 color-2) color-1 color-2))

(define (lighten color-1 color-2)
  (if (> color-1 color-2) color-1 color-2))

(define (difference color-1 color-2)
  (magnitude (- color-1 color-2)))

(define (negation color-1 color-2)
  (- 1 (magnitude (- 1 color-1 color-2 ))))

(define (exclusion color-1 color-2)
  (- (+ color-1 color-2) (* 2 color-1 color-2)))

; To do
;(define (overlay color-1 color-2)
 ; (if (< color-1
  

