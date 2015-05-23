:- dynamic mem/1.

memset([H|_]):- var(H),!,fail.
memset([]).
memset([H|T]):-
	mem(H),!,
	memset(T).
memset([H|T]):-
	assert(mem(H)),
	memset(T).