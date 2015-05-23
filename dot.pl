dot([],[],0).
dot([H1|T1],[H2|T2],R):-
	dot(T1,T2,R0),
	R is R0+H1*H2.