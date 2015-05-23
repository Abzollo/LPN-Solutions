complexterm(X):-
	nonvar(X),
	functor(X,_,N),
	N > 0.