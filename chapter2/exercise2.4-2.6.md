## Exercise 2.24
- vertify by applying a&b (Applicative Order)    
　(car (cons a b))  
=> (car (lambda (m) (m a b)))  
=> ( (lambda (m) (m a b)) (lambda (p q) p))  
=> ((lambda (p q) p) a b)  
=> a

- cdr  
(define (cdr z) (z lambda (p q) q))  

## Exercise 2.25
- cons
(define (cons x y)  
(* (expt 2 x) (expt 3 y)))  

- car  
(define (car z)  
　　　(if (= (remainder z 2) 0)   
　　　　　(+ 1 (car (/ z 2))) 0))

- cdr  
(define (cdr z)  
　　　(if (= (remainder z 3) 0)   
　　　　　(+ 1 (cdr (/ z 3))) 0))  
     
## Exercise 2.26
- one  
　(add-1 zero)  
=> (add-1 (lamda (f) (lambda (x) x)))  
=> (lambda (f) (lambda (x) (f (( (lamda (f) (lambda (x) x)) f) x))))  
=> (lambda (f) (lambda (x) (f ((lambda (x) x) x)))  
=> (lambda (f) (lambda (x) (f ((lambda (x) x) x)))
=> (lambda (f) (lambda (x) (f x)))
(define one (lambda (f) (lambda (x) (f x))))

- two  
　(add-1 one)  
==> (lambda (f) (lambda (x) (f (f x))))   
(define two (lambda (f) (lambda (x) (f (f x)))))  

- add  
[See this](http://sicp.readthedocs.io/en/latest/chp2/6.html) or [this](http://community.schemewiki.org/?sicp-ex-2.6)
