union([X|Y],Z,M) :- list_member(X,Z), union(Y,Z,M).
union([X|Y],Z,[X|M]) :- \+ list_member(X,Z), union(Y,Z,M).
union([],Z,Z).

list_member(X,[X|_]).
list_member(X,[_|TAIL]) :-
list_member(X,TAIL).



intersection([X|Y],Z,[X|M]) :- list_member(X,Z), intersection(Y,Z,M).
intersection([X|Y],Z,M) :- \+ list_member(X,Z), intersection(Y,Z,M).
intersection([],Z,Z).