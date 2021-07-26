male(moyej).
male(muslem).
male(akbar).
male(akkas).
male(firoj).
male(maruf).
male(ahnaf).
male(alfez).

female(sonte).
female(rumisa).
female(afroza).
female(rajeda).
female(rumana).
female(sumona).
female(adori).
female(jeba).
female(jeni).

father(moyej,muslem).
father(moyej,akbar).
father(moyej,akkas).
father(muslem,rumana).
father(muslem,maruf).
father(muslem,sumona).
father(firoj,jeba).
father(firoj,jeni).
father(maruf,ahnaf).
father(maruf,alfez).

mother(sonte,muslem).
mother(sonte,akbar).
mother(sonte,akkas).
mother(rumisa,rumana).
mother(rumisa,maruf).
mother(rumisa,sumona).
mother(rumana,jeba).
mother(rumana,jeni).
mother(adori,ahnaf).
mother(adori,alfez).

parent(X,Y):-father(X,Y);mother(X,Y).

grandparent(X,Y):-parent(X,Z),parent(Z,Y).

brother(X,Y):-male(X),parent(Z,X),parent(Z,Y).

sister(X,Y):-female(X),parent(Z,X),parent(Z,Y).

brother_in_law(X,Y):-male(X),sister(Z,Y),wife(Z,X).

sister_in_law(X,Y):-female(X),brother(Z,Y),wife(X,Z).

uncle(X,Y):-male(X),parent(Z,Y),brother(X,Z);brother_in_law(X,Z).

aunt(X,Y):-female(X),parent(Z,Y),sister(X,Z);sister_in_law(X,Z).

wife(X,Y):-mother(X,Z),father(Y,Z).

greatgrandparent(X,Y):-parent(Z,Y),grandparent(X,Z).

