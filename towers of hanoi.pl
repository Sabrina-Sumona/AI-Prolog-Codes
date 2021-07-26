move(1,A,C,_) :- write('Move to disk from '), write(A), write(' to '), write(C), nl.
move(N,A,C,B) :- N>1, M is N-1, move(M,A,B,C), move(1,A,C,_), move(M,B,C,A).