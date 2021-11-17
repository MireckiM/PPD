/* zad1  */

sm([],L,L).
sm([H1 | T1],[H2 | T2],[H3 is H1+H2|T3]) :- sm(T1,T2,T3).

/* zad2  */
/*   a   */

rowne(L1,L2) :- length(L1,N1), length(L2,N2), N1 = N2.

/*   b   */

rowne2([],[]).
rowne2([_|L1],[_|L2]) :- rowne2(L1, L2).

/* zad3  */

max([X],X).
max([H1,H2|T],M) :- max([H2|T],M2), max2(H1,M2,M).

max2(A,B,A) :- A>=B.
max2(A,B,B) :- A<B.


/* zad4  */

poczatek([],L).
poczatek([H1|T1],[H2|T2]) :- H1=H2, poczatek(T1,T2).


/* zad5  */
/*   a   */
wyb(H,[H|T],T).  
wyb(X,[H1|R],[H1|S]) :- wyb(X,R,S).

permutation2([],[]).
permutation2([X|Y],Z) :- permutation2(Y,W), wyb(X,Z,W).  


/*   b   */

flatten2([], []) :- !.
flatten2([H|T], X) :- !, flatten2(H, NewL), flatten2(T, NewLs), append(NewL, NewLs, X).
flatten2(H, [H]).

/*   c   */

sumlist2([],0).
sumlist2([H|T],S) :- sumlist2(T,St), S is H + St.

/*   d   */

numlist2(Fi,La,L) :- findall(N, between(Fi,La,N), L).

/*   e   */
/*   f   */


/* zad6  */

iloczyn2(_, [], []).
iloczyn2([], _, []).
iloczyn2([H1|T1], L2, [H1|L]):- member(H1, L2), iloczyn2(T1, L2, L), !.
iloczyn2([_|T1], L2, L):- iloczyn2(T1, L2, L).

iloczyn(L1, L2):- iloczyn2(L1, L2, L), write(L).
