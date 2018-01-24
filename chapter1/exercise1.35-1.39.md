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

- b.  
recurisive process:  
(define (cont-frac n d k)  
　　　(if (= k 0) 0  
　　　　　(/ (n 1)  (+ (d 1)  
     　　(cont-frac (lambda (i) (n (+ i 1)))  
　　　　　　　(lambda (i) (d (+ i 1)))  
　　　　　　　(- k 1))))))  
       
## Exercise 1.38  
 (define (e-euler k)  
 　　　(+ 2.0  
 　　　(cont-frac (lambda (i) 1)  
 　　　　　(lambda (i) (if (= (remainder i 3) 2) (/ (+ i 1) 1.5) 1))  
 　　　　　k)))  
      
## Exercise 1.39  
(define (tan-cf x k)  
　　　(cont-frac  
　　　　　(lambda (i) (if (= i 1) x ( - (* x x))))  
　　　　　(lambda (i) (- (* i 2) 1))  
　　　　　k))  
