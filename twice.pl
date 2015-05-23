twice([],[]).
twice([H1|T1],L2):-
	L2 = [H1,H1|T2],
	twice(T1,T2).