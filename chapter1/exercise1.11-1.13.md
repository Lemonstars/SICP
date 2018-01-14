## Exercise 1.11
- recursive process  
(define (f n)  
　　(cond ( (< n 3) n)  
　　　　　( else (+  (f (- n 1))   
　　　　　　　　　(* 2 (f (- n 2)))  
　　　　　　　　　(* 3 (f (- n 3)))))    
　　)  
)  

- iterative process
  - step 1  
  (define (f-iter a b c i n)  
  　　　(if (= i n) c  
  　　　(f-iter (+ a (* 2 b) (* 3 c)) a b (+ i 1) n))  
  )  

  - step 2  
  (define (f n)  
  　　　(f-iter 2 1 0 0 n)  
  )  

## Exercise 1.12
(define (f row column)  
　　(if (or (= column 1) (= column row)) 1  
　　　(+ (f (- row 1) (- column 1))  
　　　　(f (- row 1) column)))  
)  

## Exercise 1.13
[See this](http://sicp.readthedocs.io/en/latest/chp1/13.html) 
