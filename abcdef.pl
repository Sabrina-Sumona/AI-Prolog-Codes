likes(mary,X) :- snake(X), !, fail.
likes(mary,X) :- animal(X).

animal(dog).
animal(cat).
animal(bird).
animal(cobra).
animal(python).
snake(cobra).
snake(python).
