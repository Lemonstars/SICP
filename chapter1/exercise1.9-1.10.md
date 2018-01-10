## Exercise 1.9

#### procedure one  
 - procudure definition  
(define (+ a b)
(if (= a 0) b (inc (+ (dec a) b))))  

 - compute process  
　(+ 4 5)  
=(inc (+ 3 5))  
=(inc (inc (+ 2 5)))  
=(inc (inc (inc (+1 5))))  
=(inc (inc (inc (inc (+ 0 5)))))  
=(inc (inc (inc (inc 5))))  
=(inc (inc (inc 6)))  
=(inc (inc 7))  
=(inc 8)  
=9  

 - type  
The process grows and shrinks with respect to the actual argument.  
So it's recursive.

#### procedure two  
 - procudure definition  
(define (+ a b)
(if (= a 0) b (+ (dec a) (inc b))))

 - compute process  
　(+ 4 5)  
=(+ 3 6)  
=(+ 2 7)  
=(+ 1 8)  
=(+ 0 9)  
=9  

 - type  
 It executes in constant space with respect to the argument.
 So it is iterative.  

## Execrise 1.10

　(A 1 10)   
=(* 2 (A 1 9))  
=(* 2 (* 2 (A 1 8)))  
= ...  
=(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 1))))))))))  
=(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2)))))))))  
=2^10  
=1024

(A 2 4)=65536  
(A 3 3)=65536

Define the producure in the scheme terminal and compute the result.  

f(n) = 2*n  
g(n) = 2^n  
h(n) = 2^2^2^...2 (the number of 2 is n)  



