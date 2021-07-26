animal('dog').
animal('cat').
animal('horse').
animal('elephant').
animal('tiger').
animal('lion').
animal('fox').

large('horse').
large('elephant').
large('tiger').
large('lion').

small('dog').
small('cat').
small('fox').

large_animal(X):-animal(X),large(X).

small_animal(X):-animal(X),small(X).