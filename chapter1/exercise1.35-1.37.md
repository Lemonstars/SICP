## Exercise 1.35  
x |--> 1 + 1/x  
　1 + 2/(1+√5)  
= 1 + (√5 - 1)/2  
= (√5+1)/2  

(fixed-point (lambda (x) (+ 1.0 (/ 1 x))) 1)  

## Exercise 1.36
- fixed-point  
(define tolerance 0.00001)  
(define (fixed-point f first-guess)  
　　　(define (close-enough? v1 v2)  
　　　　　(< (abs (- v1 v2)) tolerance))  
　　　(define (try guess)  
　　　　　(newline)  
　　　　　(display guess)   
　　　　　(let ((next (f guess)))   
　　　　　　　(if (close-enough? guess next) next (try next))))  
　　　(try first-guess))  
   
- compute  
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2 )  

## Exercise 1.37
- a.  
iterative process:  
(define (cont-frac n d k)  
　　　(define (loop result term)  
　　　　　(if (= term 0) result  
　　　　　　　(loop (/ (n term)  
　　　　　　　　　(+ (d term) result))  
　　　　　　　　　(- term 1))))  
　　　(loop 0 k))  
     
