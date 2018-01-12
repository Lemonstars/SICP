## Counting Change

- Description  
How many different ways can we make change of $1.00, given half-dollars, quarters, dimes, nickels, and pennies?

- Solution (recurisive)  
  - first-denomination  
  (define (first-denomination kinds-of-coins)  
  　　(cond ((= kinds-of-coins 1) 1)  
  　　　　((= kinds-of-coins 2) 5)  
  　　　　((= kinds-of-coins 3) 10)  
  　　　　((= kinds-of-coins 4) 25)  
  　　　　((= kinds-of-coins 5) 50)))
  
  - countChange-iter  
  (define (countChange-iter amount kinds-of-coins)  
  　　　(cond ((= amount 0) 1)  
  　　　　　((or (< amount 0) (= kinds-of-coins 0)) 0)  
  　　　　　(else (+ (countChange-iter amount (- kinds-of-coins 1))  
  　　　　　　　(countChange-iter (- amount (first-denomination kinds-of-coins)) kinds-of-coins)  )  )  )  )  
  
  - countChange  
  (define (countChange amount) (countChange-iter amount 5))  
  
- Note  
 - The key-value in the procedure `first-denomination` can be different.
