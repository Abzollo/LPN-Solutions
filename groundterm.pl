groundterm(X):-  atomic(X).
groundterm(X):-
	X \= [_|_],
	functor(X,_,N),
	N > 0,
	X =.. L,	% X should be a complex term and not a list
	groundterm(L).
groundterm([H|T]):-  atomic(H), groundterm(T).