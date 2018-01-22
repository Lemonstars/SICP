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

## Exercise 1.31　
- a.  
  - product  
  (define (product term a next b)  
　　　(define (iter a result)  
　　　　　(if (> a b) result (iter (next a) (* result (term a)))))  
　　　(iter a 1))  
   
  - factorial  
  (define (factorial n)  
  　　　　　(define (term-self x) x)  
  　　　　　(define (next-self x) (+ x 1))  
  　　(product term-self 1 next-self n))  
  
 - compute-pi  
   - next  
   (define (next n) (+ n 1) )  
   
   - up-product  
   (define (up-product n)  
   　　　(define (up-term x)  
   　　　　　(if (even?  x) (+ x 2) (+ x 1)))  
   　　　(product up-term 1 next n))  
   
   - low-product  
   (define (low-product n)    
   　　　(define (low-term x)  
   　　　　　(if (even?  x) (+ x 1) (+ x 2)))  
   　　　(product low-term 1 next n))  
   
   - compute-pi  
   (define (compute-pi n)  
   　　　(* 4 (/ (* 1.0 (up-product n)) (low-product n))))
   
- b.
recursive process:  
(define (product term a next b)  
　　　　　(if (> a b) 1  
　　　　　(* (term a) (product term (next a) next b))))  

## Exercise 1.32
- a.  
recursive process:  
(define (accumulate combiner null-value term a next b)  
　　　(if (> a b) null-value  
　　　　　(combiner (term a) (accumulate combiner null-value term (next a) next b))))  

  - sum  
  (define (sum term a next b) (accumulate + 0 term a next b))  
  
  - product  
  (define (product term a next b) (accumulate * 1 term a next b))  

- b.  
iterative process:  
(define (accumulate combiner null-value term a next b)  
　　　(define (accumulate-iter a result)  
　　　　　(if (> a b) result  
　　　　　( accumulate-iter (next a) (combiner (term a) result))))  
　　　(accumulate-iter a null-value))  

## Exercise 1.33
- recurisive process:  
(define (filtered-accumulate combiner null-value term a next b filter?)  
　　　(if (> a b) null-value  
　　　　　(if (filter? a)  
　　　　　　　(combiner (term a) (filtered-accumulate combiner null-value term (next a) next b filter?))  
　　　　　　　(combiner null-value (filtered-accumulate combiner null-value term (next a) next b filter?)))))  

- iterative process:  
(define (filtered-accumulate combiner null-value term a next b filter?)  
　　　(define (accumulate-iter a result)  
　　　　　(if (> a b) result  
　　　　　　　(accumulate-iter (next a) (combiner (if (filter? a) (term a) null-value) result))))  
　　　(accumulate-iter a null-value))  
   
- a.  
(define (sum-prime a b)  
　　　(define (term-this x) x)  
　　　(define (next-this x) (+ x 1))  
　　　(filter-accumulate + 0 term-this a next-this b prime?))  
   
- b.  
(define (coprime? i n)  
　　　(and (< i n) (= 1 (gcd i n))))  
   
   (define (product-of-coprimes n)  
　　　(filtered-accumulate * 1 (lambda (x) x) 1 (lambda (i) (+ i 1)) n  
　　　　　(lambda (x) (coprime? x n))))  
     
     `Lambda has't been introduced so far. This detail is included in the next chapter`
