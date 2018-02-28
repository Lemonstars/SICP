## Exercise 2.30
- using `map`  
(define (square-tree tree)  
　　　(map (lambda (sub-tree)  
　　　　　(if (pair? sub-tree)  
　　　　　　　(square-tree sub-tree)  
　　　　　　　(square sub-tree)))  
　　　tree))  

- using `cond`  
(define (square-tree tree)  
　　　(cond ((null? tree)  
　　　　　'())  
　　　((not (pair? tree))  
　　　　　(square tree))  
　　　(else  
　　　　　(cons (square-tree (car tree))  
　　　　　(square-tree (cdr tree))))))  
     
## Exercise 2.31
(define (tree-map f tree)  
　　　(map (lambda (sub-tree)  
　　　　　(if (pair? sub-tree)  
　　　　　　　(tree-map f sub-tree)  
　　　　　　　(f sub-tree)))  
　　　tree))  
   
## Exercise 2.32
(define (subsets s)  
　　　(if (null? s)  
　　　　　(list '())  
　　　　　(let ((rest (subsets (cdr s))))  
　　　　　(append rest (map (lambda (x)  
　　　　　(cons (car s) x))  
　　　　　rest)))))  
