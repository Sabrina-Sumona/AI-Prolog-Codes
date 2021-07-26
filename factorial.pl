factorial(A,F):- A>0, B is A-1, factorial(B,C), F is A * C.
factorial(0,1).
