## Exercise 1.16
- step 1: exp-iter  
(define (exp-iter b n a)   
　　　( cond ( (= n 0) a)  
　　　　　( (even? n) (exp-iter (* b b) (/ n 2) a))    
　　　　　( else (exp-iter b (- n 1) (* a b))  
　　　)
)

- step 2: fast-exp  
(define (fast-exp b n) (exp-iter b n 1))  

## Exercise 1.17 & Exercise 1.18  
#### recursive process
- step 1: double & halve  
(define (double x) (+ x x))  
(define (halve x) (/ x 2))  

- step 2: *  
(define (* a b)  
　　　( cond ( (= b 0) 0 )  
　　　　　( (even? b) (* (double a) (halve b)) )  
　　　　　( else (+ a (* a (- b 1))) )  
　　　)  
)

#### iterative process  
- step 1: double & halve  
(define (double x) (+ x x))  
(define (halve x) (/ x 2))  

- step 2: iter  
(define (*iter a b product)  
　　　(cond ( (= b 0) product)  
　　　　　( (even? b) (*iter (double a) (halve b) product) )  
　　　　　( else (*iter a (- b 1) (+ product a)) )  
　　　)  
)  

- step 3: *  
(define (* a b) (*iter a b 0) )  

## Exercise 1.19 
- relation  
p' = p^2 + q^2  
q' = 2pq + q^2  

- producure  
(define (fib n) (fib-iter 1 0 0 1 n))  

(define (fib-iter a b p q n)  
　　　(cond ((= n 0)  b)  
　　　　　　((even? n) (fib-iter a b (+ (square p) (square q)) (+ (* 2 p q) (square q)) (/ n 2)))  
　　　　　　(else (fib-iter (+ (* b q) (* a q) (* a p)) (+ (* b p) (* a q)) p q (- n 1)))))
