:- dynamic sigmares/2.

sigma(N,X):- integer(N), N>0, sigmado(N,X).

sigmares(1,1).

sigmado(N,X):-
	sigmares(N,X), !.
sigmado(N,X):-
	Nin is N-1,
	sigmado(Nin,Xin),
	X is Xin+N,
	assert(sigmares(N,X)).