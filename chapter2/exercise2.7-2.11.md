## Exercise 2.7
- upper-bound  
(define (upper-bound interval)  
(max (car interval) (cdr interval)))  

- lower-bound  
(define (lower-bound interval)  
(min (car interval) (cdr interval)))  

## Exercise 2.8
- sub-interval  
(define (sub-interval x y)  
　　　(make-interval  
　　　　　(- (lower-bound x) (upper-bound y))   
　　　　　(- (upper-bound x) (lower-bound y))))  

## Exercise 2.9
### sum  
Assuming that the width of interval A is a and the width of interval B is b.  
In other words,   
(upper-bound A) - (lower-bound A) = 2*a and  
(upper-bound B) - (lower-bound B) = 2*b  

The width of (add-interval A B) is  
((upper-bound A) + (upper-bound B)) - ((lower-bound A) + (lower-bound B))/2  
=((upper-bound A) - (lower-bound A))/2 + ((upper-bound B) - (lower-bound B))/2  
=a+b  

Thus, it's correct for the operation sum.  

### multiplication & division
[0, 10] * [0, 2] = [0, 20]  
The result of multiplication is 5 but the actual value is 10.  

## Exercise 2.10
(define (div-interval x y)  
　　　(if (or (= (lower-bound y) 0) (= (upper-bound y) 0))  
　　　　　(error "Division error")  
　　　　　(mul-interval x  
　　　　　　　(make-interval  
　　　　　　　　　(/ 1.0 (upper-bound y))  
　　　　　　　　　(/ 1.0 (lower-bound y))))))  

## Exericise 2.11
[See this](http://community.schemewiki.org/?sicp-ex-2.11)

 
