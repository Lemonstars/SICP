## Exercise 2.2
- point  
(define (make-point x y) (cons x y))  
(define (x-point point) (car point))  
(define (y-point point) (cdr point))  

- line  
(define (make-segment start end) (cons start end))  
(define (start-segment segment) (car segment))  
(define (end-segment segment) (cdr segment))  

- midpoint  
(define (midpoint-segment line)  
　　　(let ((start (start-segment line))   
　　　　　(end (end-segment line)))   
　　　(make-point  
　　　　　(/ (+ (x-point start) (x-point end)) 2)   
　　　　　(/ (+ (y-point start) (y-point end)) 2))))  
     
## Exercise 2.3  
### Define Rectangle by Line Segments
- rectangle  
(define (make-rectangle length width) (cons length width))  
(define (length-rectangle rectangle) (car rectangle))  
(define (width-rectangle rectangle) (cdr rectangle))  

- line-length  
(define (line-length line)  
　　　(let ((startPoint (start-segment line))  
　　　　　(endPoint (end-segment line)))  
　　　(sqrt (+  
　　　　　(square (- (x-point startPoint) (x-point endPoint)))  
　　　　　(square (- (y-point startPoint) (y-point endPoint)))))))  

- perimeter  
(define (perimeter rectangle)  
　　　(* 2 (+  
　　　　　(line-length (length-rectangle rectangle))  
　　　　　(line-length (width-rectangle rectangle)))))  

- area  
(define (area rectangle)  
　　　(*  
　　　　(line-length (length-rectangle rectangle))  
　　　　(line-length (width-rectangle rectangle))))  
    
### Define Rectangle by Points
Rectangle can be defined by two points: the left-top point and the right-bottom point.  
The concrete producures leave out.

Notice: The `perimeter` and `area` procedures can be unchanged as long as you redefine the  
procedures `length-rectangle` and `width-rectangle`.
