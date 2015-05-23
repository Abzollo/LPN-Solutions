addone([],[]).
addone([H0|L],[H1|T]):-
	H1 is H0+1,
	addone(L,T).