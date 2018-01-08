## Exercise 1.1
- 10
- 12
- 8
- 3
- 6
- Value: a
- Value: b
- 19
- #f
- 4
- 16
- 6
- 16

## Exercise 1.2
- (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

## Exercise 1.3
- (define (larger x y)  
　　　(if (> x y) x y))  
- (define (square x) (* x x))  
- (define (sum-of-square x y)  
　　　(+ (square x) (square y)))  
- (define (larger-two-square x y z)  
　　　(if (= x (larger x y))  
　　　(sum-of-square x (larger y z))  
　　　(sum-of-square y (larger x z))))  

## Exercise 1.4
- If a is larger than 0, the result is a+b. Otherwise, the result is a-b. 
- a + |b|

## Exercise 1.5
- Applicative-order  evaluation: The promgram will never stop.
- Normal-order evaluation: The result is 0.
