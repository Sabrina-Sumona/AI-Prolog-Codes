member( X, [X| Tail]).
member( X, [Head| Tail]) :- member( X, Tail).

conc( [], L, L).
conc( [X| L1], L2, [X| L3]) :- conc( L1, L2, L3).

add(X, L,[X|L]).

del( X, [X| Tail], Tail).
del( X, [Y| Tail], [Y|Tail1]) :- del( X, Tail, Tail1).

sublist( S, L) :- conc( L1, L2, L), conc( S, L3, L2).

length1( [], 0).
length1( [ _| Tail], N) :- length1( Tail, N1),
N is 1 + N1.

union([X|Y],Z,M) :- list_member(X,Z), union(Y,Z,M).
union([X|Y],Z,[X|M]) :- \+ list_member(X,Z), union(Y,Z,M).
union([],Z,Z).

list_member(X,[X|_]).
list_member(X,[_|TAIL]) :-list_member(X,TAIL).

intersection([X|Y],Z,[X|M]) :- list_member(X,Z), intersection(Y,Z,M).
intersection([X|Y],Z,M) :- \+ list_member(X,Z), intersection(Y,Z,M).
intersection([],Z,Z).

