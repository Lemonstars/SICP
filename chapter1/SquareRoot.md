## Square Roots by Newton's Method

- (define (abs x)  
　　　(if (< x 0)  
　　　(- x) x))  
   
- (define (good-enough guess x)  
　　　(if (<  
　　　　(abs (- (* guess guess) x))  
　　　　0.0001)  
　　　#t #f))  

- (define (improve guess x)  
　　　(/ (+ guess (/ x guess)) 2) )  
   
- (define (sqrt-iter guess x)  
　　　(if (good-enough guess x)  
　　　　guess  
　　　　(sqrt-iter (improve guess x) x)))  
