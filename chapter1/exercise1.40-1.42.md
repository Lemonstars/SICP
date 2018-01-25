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
