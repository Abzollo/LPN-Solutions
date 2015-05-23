split([],[],[]).
split([H|T],[H|TP],N):-
	H >= 0, !,
	split(T,TP,N).
split([H|T],P,[H|TN]):-
	H < 0,
	split(T,P,TN).