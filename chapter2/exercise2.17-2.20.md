## Exercise 2.17
- last-pair  
(define (last-pair item)  
　　　(if (null? (cdr item)) (car item) (last-pair (cdr item))))  

## Exercise 2.18
- iter   
(define (iter remained-items result)  
　　　(if (null? remained-items)  
　　　　　result  
　　　　　(iter (cdr remained-items)  
　　　　　　　(cons (car remained-items) result))))  

- reverse  
(define (reverse lst) (iter lst '()))

## Exercise 2.19
- no-more?  
(define (no-more? coin-values) (if (null? coin-values) #t #f))

- first-denomination  
(define (first-denomonation coin-values) (car coin-values))  

- except-first-denomination  
(define (except-first-denomonation coin-values) (cdr coin-values))  

- the affect of the different order  
This is no difference.  

## Exercise 2.20
- same-parity  
(define (same-parity sample . others)  
　　　(filter (if (even? sample)  
　　　　　even? odd?)  
　　　　　(cons sample others)))  
