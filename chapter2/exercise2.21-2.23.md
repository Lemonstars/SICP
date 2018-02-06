## Exercise 2.21
- without map  
(define (square-list items)  
　　　(if (null? items) nil   
　　　　　(cons (square (car items))   
　　　　　(square-list (cdr items)))))  
     
- with map  
(define (sqaure-list items)
(map (lambda (x) (* x x)) items))  

## Exercise 2.22
- first  
Notice the parameter `answer` which is the second parameter of `cons`.  
The current `answer` will be the last part of the nexr `answer`.  
Thus the result is reversed.

- second  
The structure of the result as follows: `((((() . 1) . 4) . 9) . 16)`  

## Exercise 2.23
(define (for-each pro items)  
　　　(if (not (null? items))   
　　　　　(pro (car items))  
　　　　　(for-each pro (cdr items))))  
