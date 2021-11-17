pisz([]).
pisz([X|Y]):-write(X),nl,pisz(Y).

dlugosc([],0).
dlugosc([G|O],N):-dlugosc(O,N1),N is N1+1.