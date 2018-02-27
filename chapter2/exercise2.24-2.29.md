## Exercise 2.24
- result printed by the interpreter  
(1 (2 (3 4)))  

## Exercise 2.25
- (car (cdr (car (cdr (cdr (list 1 3 (list 5 7) 9) )))))  
- (car (car  (list (list 7)) ))  
- (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr  
(list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7 )))))) ))))))))))))  

## Exercise 2.26
- append  
(1 2 3 4 5 6)  
- cons  
((1 2 3) 4 5 6)
- list  
((1 2 3) (4 5 6))  

## Exercise 2.27
[See this](https://sicp.readthedocs.io/en/latest/chp2/27.html)

## Exercise 2.28
(define (fringe tree)  
　　　(cond ((null? tree)  
　　　　　`())  
　　　((not (pair? tree))  
　　　　　(list tree))  
　　　(else   
　　　　　(append (fringe (car tree))   
　　　　　　　(fringe (cadr tree))))))  
       
## Exercise 2.29
#### a.  
(define (left-branch mobile) (car mobile))  
(define (right-branch mobile) (cadr mobile))  
(define (branch-length branch) (car branch))  
(define (branch-structure branch) (cadr branch))  

#### b.  
(define (total-weight mobile)  
　　　(+ (branch-weight (left-branch mobile))  
　　　(branch-weight (right-branch mobile))))  
   
(define (branch-weight branch)  
　　　(if (pair? (branch-structure branch))   
　　　　　(total-weight (right-branch branch))  
　　　　　(branch-structure branch)))  

#### c.
(define (branch-torque branch)  
　　　(* (branch-length branch)  
　　　　　(branch-weight branch)))  

(define (mobile-balance? mobile)  
　　　(let ((left (left-branch mobile))  
　　　　　(right (right-branch mobile)))  
　　　(and   
　　　　　(same-torque? left right)  
　　　　　(branch-balance? left)  
　　　　　(branch-balance? right))))  

(define (same-torque? left right)  
　　　(= (branch-torque left)  
　　　　　(branch-torque right)))  

(define (branch-balance? branch)  
　　　(if (hangs-another-mobile? branch)  
　　　　　(mobile-balance? (branch-structure branch))  
　　　　　#t))  
     
#### d.
You just need to change the produres *right-branch* and *branch-struture*.  

- (define (right-branch mobile) (cdr mobile))  
- (define (branch-structure branch) (cdr branch))  
