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
