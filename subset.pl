:-  ensure_loaded([set]).

subset(Sub,List):-
	set(List,Set),
	subget(Sub,Set).

subget([],[]).
subget([H|SubT],[H|SetT]):-  subget(SubT,SetT).
subget(Sub,[_|SetT]):-  subget(Sub,SetT).