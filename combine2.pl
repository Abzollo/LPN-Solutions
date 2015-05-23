combine2([],[],[]).
combine2([Hl|Tl],[Hr|Tr],X):-
	X = [[Hl,Hr]|T],
	combine2(Tl,Tr,T).