## Exercise 1.21
(smallest-divisor 199) = 199  
(smallest-divisor 1999) = 1999  
(smallest-divisor 19999) = 7  

## Exercise 1.22
- next-odd  
(define (next-odd n) (if (odd? n) (+ n 2) (+ n 1)  

- primes? (page 64)  
(define (divides? a b) (= (remainder b a) 0))  
(define (find-divisor n test-divisor)  
　　　(cond ((> (square test-divisor) n) n)   
　　　　　((divides? test-divisor n) test-divisor)  
　　　　　(else (find-divisor n (+ test-divisor 1)))))  
(define (smallest-divisor n) (find-divisor n 2))  
(define (prime? n) (= n (smallest-divisor n)))  

- continue-primes    
(define (continue-primes n count)  
　　　(cond ((= count 0) (display "are primes."))  
　　　　　((prime? n) (display n) (newline)  
　　　　　(continue-primes (next-odd n) (- count 1)))  
　　　　　(else (continue-primes (next-odd n) count))))  
     
## Exercise 1.23
- next
(define (next n) (if (= n 2) 2 (+ n 2)))  
 
## Exercise 1.24
- prime  
(define (prime? n) (fast-prime? n 10))  
*the procedure fast-prime is in the page 68*

## Exercise 1.25  
- The producure is correct in theory. However, the effciency is low without limit to exponent.  

## Exercise 1.26
- The procedure expmod repeats twice.  

## Exercise 1.27
- congruent  
  (define (congruent? a n) (= (expmod a n n) a))  

- test-iter  
  (define (test-iter a n)  
 　　　　(cond ((= a n) #t)  
 　　　　　　((congruent? a n) (test-iter (+ a 1) n))  
 　　　　　　(else #f)))  
- carmichael-test
  (define (carmichael-test n) (test-iter 1 n))  

## Exercise 1.28
[See this](http://sicp.readthedocs.io/en/latest/chp1/28.html)
