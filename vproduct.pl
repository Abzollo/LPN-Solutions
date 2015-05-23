vproduct([],[],[]).
vproduct([H1|T1],[H2|T2],[HR|TR]):-
	HR is H1*H2,
	vproduct(T1,T2,TR).