add(X,L,L) :- member(X,L),!.
add(X,L,[X|L]).