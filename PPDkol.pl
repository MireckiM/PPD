/* 2. usuwanie powtorzen */

usunpowt(L,X) :- sort(L,X).

/* 3. podwaja numlist */

podwojne(0,[]).
podwojne(X,[H|T]) :- X>0, Y is X-1, H is X*2, podwojne(Y,T).

/* 4. nth1 */

nth1(1,[H|_],H).
nth1(I,[_|L],X) :- I > 1, I1 is I-1, nth1(I1,L,X).

/* 5. Iloczyn zbiorow */

ilzb([], _, []).
ilzb([H1|T1], L2, [H1|Res]) :- member(H1, L2), ilzb(T1, L2, Res).
ilzb([_|T1], L2, Res) :- ilzb(T1, L2, Res).


/* 6. pomin x pierwszych elementow listy */

pomin(0,L,L).
pomin(X,[_|T],L) :- X>0 , Y is X-1, pomin(Y,T,L). 



