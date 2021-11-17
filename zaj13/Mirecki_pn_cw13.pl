/* zad 1 */


/* zad 2 */
/* pliki lec¹ do J:\Documents\Prolog */
dodaj_fakt :-
	write('Podaj predykat: '),
	read(P),
	write('Podaj argumenty: '),
	read(A),
	append('fakty.pl'),
	write(P),write('('),write(A),write(').'),
	nl,
	told.

usun_fakt :-
	write('Podaj fakt do usuniecia: '),
	read(X),
	retract(X).

