## Exercise 1.6
The interpreter will show 

> ;Aborting!: maximum recursion depth exceeded   

The reason is that the interpreter is using applicative-order evaluation.   
The new-if is just a procedure which will apply actual arguments immediately.  
So, the procedure sqrt-iter will call itself and never stop.

## Exercise 1.7
(define (good-enough? old-guess new-guess)  
　　　　(> 0.01  
　　　　　　(/ (abs (- new-guess old-guess))  
　　　　　　old-guess)))

## Exercise 1.8
- (define (cube-root x)  
　　　(cube-root-iter 1.0 x))  

- (define (cube-root-iter guess x)    
　　　(if (good-enough? guess x)   
　　　　guess (cube-root-iter (improve guess x) x)))  

- (define (good-enough? guess x)  
　　　(< (abs (- (cube guess) x))  
　　　　0.001))  

- (define (improve guess x)  
　　　(/ (+ (/ x (square guess)) (* 2 guess))  
　　　　3))  
      
- (define (cube x)  
　　　(* x x x))
