## Exercise 2.1  
(define (make-rat n d)  
　　　(cond ((and (< n 0) (< d 0)) (cons (- n) (- d)))  
　　　　　((and (> n 0) (< d 0)) (cons (- n) (- d)))  
　　　　　(else (cons n d))))    
