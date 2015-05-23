combine1([],[],[]).
combine1([Hl|Tl],[Hr|Tr],X):-
	X = [Hl,Hr|T],
	combine1(Tl,Tr,T).