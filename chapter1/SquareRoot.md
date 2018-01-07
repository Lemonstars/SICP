## Square Roots by Newton’s Method
- (define (abs x)  </br>
　　　(if (< x 0)  </br>
　　　(- x) x))    </br>
   
- (define (good-enough guess x)   </br>
　　　(if (<                      </br>
　　　　(abs (- (* guess guess) x)) </br>
　　　　0.0001)                     </br>
　　　#t #f))                     </br>

- (define (improve guess x)            </br>
　　　(/ (+ guess (/ x guess)) 2) )     </br>
   
- (define (sqrt-iter guess x)           </br>
　　　(if (good-enough guess x)          </br>
　　　　guess                             </br>
　　　　(sqrt-iter (improve guess x) x))) </br>
