## Exercise 1.20  
- Applicative Order  
　(gcd 206 40)  
= (gcd 40 (remainder 206 40))  
= (gcd 40 6)  
= (gcd 6 (remainder 40 6)) 
= (gcd 6 4)  
= (gcd 4 (remainder 6 4))  
= (gcd 4 2)  
= (gcd 2 (remainder 4 2))  
= (gcd 2 0)  
= 2  

- Normal Order  
[See this](http://community.schemewiki.org/?sicp-ex-1.20)
