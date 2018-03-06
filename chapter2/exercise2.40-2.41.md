## Exercise 2.40
- unique-pairs  
(define (unique-pairs n)  
　　　(flatmap (lambda (i)  
　　　　　　　(map (lambda (j) (list i j))  
　　　　　　　(enumerate-interval 1 (- i 1))))  
　　　　　(enumerate-interval 1 n)))  

- make-pair-sum   
(define (make-pair-sum pair)  
　　　(list (car pair) (cadr pair)  
　　　　　(+ (car pair) (cadr pair))))  

- prime-sum?  
(define (prime-sum? pair)  
　　　(prime? (+ (car pair) (cadr pair))))  

- prime-sum-pairs  
(define (prime-sum-pairs n)  
　　　(map make-pair-sum  
　　　　　(filter prime-sum? (unique-pairs n))))  
     
## Exericse 2.41
- unique-triples  
(define (unique-triples n)  
　　　(flatmap (lambda (i)  
　　　　　　　(map (lambda (j)  
　　　　　　　　　(cons i j))  
　　　　　　　　　(unique-pairs (- i 1))))  
　　　　　　(enumerate-interval 1 n)))  

- triple-sum-equal-to?  
(define (triple-sum-equal-to? sum triple)  
　　　(= sum  
　　　　　(+ (car triple)  
　　　　　　　(cadr triple)  
　　　　　　　(caddr triple))))  

- remove-triples-not-equal-to  
(define (remove-triples-not-equal-to sum triple)  
　　　(filter (lambda (current-triple)  
　　　　　　　(triple-sum-equal-to? sum current-triple))  
　　　　　triple))  
