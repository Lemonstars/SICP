## Exercise 2.33
- map  
(define (map p sequence)   
　　　(accumulate (lambda (x y) (cons (p x) y) ) `() sequence))  

- append  
(define (append seq1 seq2)  
　　　(accumulate cons seq2 seq1))  

- length  
(define (length sequence)  
　　　(accumulate (lambda (x y) (+ 1 y)) 0 sequence))  
   
## Exercise 2.34
- horner-eval  
(define (horner-eval x coefficient-sequence)  
　(accumulate  
　　　(lambda (this-coeff higher-terms) (+ this-coeff (* higher-terms x)))   
　　　0   
　　　coefficient-sequence))  

## Exercise 2.35
(define (count-leaves tree)  
　　　(accumulate +  
　　　　　0  
　　　　　(map (lambda (sub-tree)  
　　　　　　　(if (pair? sub-tree)  
　　　　　　　(count-leaves sub-tree)  
　　　　　　　1))  
　　　　　tree)))  
