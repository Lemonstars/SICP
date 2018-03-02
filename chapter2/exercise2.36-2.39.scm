(define (accumulate op initial sequence)
	(if (null? sequence)
		initial
		(op (car sequence)
			(accumulate op initial (cdr sequence)))
	)
)

;Exercise 2.36
(define (accumulate-n op init seqs)
	(if (null? (car seqs))
		`()
		(cons (accumulate op init (map car seqs))
			(accumulate-n op init (map cdr seqs)))
	)
)

;Exercise 2.37
;matrix-*-vector
(define (matrix-*-vector m v)
	(map (lambda (col) (dot-product col v)) m)
)

;transpose
(define (transpose mat)
	(accumulate-n cons `() mat)
)

;matrix-*-matrix
(define (matrix-*-matrix m n)
	(let ((cols (transpose n)))
		(map (lambda (col-of-m)
                 (map (lambda (col-of-cols)
                          (dot-product col-of-m 
                                       col-of-cols))
                      cols)) m)
	)
)

;Exercise 2.38
(fold-right / 1 (list 1 2 3))
; 3/2
(fold-left / 1 (list 1 2 3))
; 1/6
(fold-right list nil (list 1 2 3))
; (1 (2 (3 ())))
(fold-left list nil (list 1 2 3))
; (((() 1) 2) 3)

;Exercise 2.39
(define (reverse sequence)
    (fold-left (lambda (x y)
                   (cons y x))
               '()
               sequence))

(define (reverse sequence)
    (fold-right (lambda (x y)
                    (append y (list x)))
                '()
                sequence))
