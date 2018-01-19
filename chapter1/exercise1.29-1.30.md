## Exercise 1.29
- sum (page 77)  
(define (sum term a next b)  
　　　(if (> a b) 0  
　　　　　(+ (term a) (sum term (next a) next b))))  
     
- simpson-integral  
(define (simpson-integral f a b n)  
　　　(define (yk k) (f (+ a (* k (/ (- b a) 1.0 n)))))  
　　　(define (next-num x) (+ x 1) )  
　　　(define (each-num x)  
　　　　　(cond ((= x 0) (yk 0))  
　　　　　　　((= x n) (yk n))  
　　　　　　　((even? x) (* 2 (yk x)))  
　　　　　　　(else (* 4 (yk x)))))  
　　　(* (/ (- b a) 3.0 n) (sum each-num 0 next-num n))  
)

- cube
(define (cube x) (* x x x))  

- test  
  - (simpson-intgral cube 0 1 100)  
  `=> ;Value: .24999999999999992`
  
  - (simpson-intgral cube 0 1 1000)  
  `;Value: .2500000000000003`  

## Exercise 1.30
(define (sum term a next b)  
　　　(define (iter a result)  
　　　　　(if (> a b) result (iter (next a) (+ result (term a)))))  
　　　(iter a 0)  
)
