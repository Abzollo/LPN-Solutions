setdyn(L,S):-
	retractall(mem(_)),
	memset(L),
	findall(X,mem(X),S).