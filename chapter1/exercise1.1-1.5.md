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
- (define (larger x y) </br>
　　　(if (> x y) x y)) </br>
- (define (square x) (* x x)) </br>
- (define (sum-of-square x y) </br>
　　　(+ (square x) (square y))) </br>
- (define (larger-two-square x y z) </br>
　　　(if (= x (larger x y)) </br>
　　　(sum-of-square x (larger y z)) </br>
　　　(sum-of-square y (larger x z)))) </br>

## Exercise 1.4
- If a is larger than 0, the result is a+b. Otherwise, the result is a-b. 
- a + |b|

## Exercise 1.5
- Applicative-order  evaluation: The promgram will never stop.
- Normal-order evaluation: The result is 0.
