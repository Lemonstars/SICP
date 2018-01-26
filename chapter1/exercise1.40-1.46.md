## Exercise 1.40  
(define (cubic a b c)  
　　　(lambda (x) (+ (cube x) (* a (sqaure x)) (* b x) c)))  

## Exercise 1.41  
(define (double f)  
　　　(lambda (x) (f (f x))))  

(((double (double double)) inc) 5)  
= 2^4 + 5  
= 21  

## Exercise 1.42  
(define (compose f g) (lambda (x) (f (g x))))  

## Exercise 1.43  
(define (repeated f n)  
　　　(if (= n 1)  
　　　　　f  
　　　　　(compose f (repeated f (- n 1)))))  

## Exercise 1.44  
- smooth  
(define (smooth f)  
　　　(let ( (dx 0.00001))  
　　　　　(lambda (x)  
　　　　　(/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3))))  

- smooth-n-fold  
(define (smooth-n-fold f n)  
　　　((repeated smooth n) f))  
   
## Exercise 1.45  
[See this](http://sicp.readthedocs.io/en/latest/chp1/45.html)  

## Exercise 1.46  
- iterative-improve  
(define (iterative-imporve good-enough? improve)  
　　　(lambda (x)  
　　　　　(if (good-enough?) x   
　　　　　(improve x))))  
     
- close-enough?  
(define (close-enough? v1 v2) (< (abs (- v1 v2)) 0.00001))  

- fixed-point  
(define (fixed-point f first-guess)   
　　　((iterative-improve  
　　　　　(lambda (x) (close-enough? x (f x)))   
　　　　　(lambda (x) (f x)))  
　　　first-guess))  
   
- sqrt  
(define (sqrt x)  
　　　((iterative-improve   
　　　　　(lambda (y) (< (abs (- (square y) x)) 0.0001))   
　　　　　(lambda (y) (average y (/ x y))))   
　　　1.0))   
