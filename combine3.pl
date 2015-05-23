combine3([],[],[]).
combine3([Hl|Tl],[Hr|Tr],X):-
	X = [j(Hl,Hr)|T],
	combine3(Tl,Tr,T).