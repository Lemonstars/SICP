## Exercise 2.53
- (list 'a 'b 'c)  
(a b c)  

- (list (list 'george))  
((george))  

- (cdr '((x1 x2) (y1 y2)))  
((y1 y2))  

- (cadr '((x1 x2) (y1 y2)))  
(y1 y2)  

- (memq 'red '((red shoes) (blue socks)))  
#f  

- (memq 'red '(red shoes blue socks))  
(red shoes blue socks)  

## Exercise 2.54
- list-equal?  
(define (list-equal? x y)  
(cond ((and (null? x) (null? y))  
　　　　　#t)  
　　　((or (null? x) (null? y))  
　　　　　#f)  
　　　((equal? (car x) (car y))  
　　　　　(equal? (cdr x) (cdr y)))  
　　　(else   
　　　　　#f)))  

- symbol-equal?  
(define (symbol-equal? x y)  
　　　(eq? x y))  
   
- equal?  
(define (equal? x y)  
　(cond ((and (symbol? x) (symbol? y))    
　　　　　(symbol-equal x y))  
　　　((and (list? x) (list? y))  
　　　　　(list-equal? x y))  
　　　else  
　　　　　(error "Wrong type"))))  
     
## Exercise 2.55
[See this](http://sicp.readthedocs.io/en/latest/chp2/55.html)
