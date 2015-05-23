:-  ensure_loaded([append]).

swapfl([H1|T1],[H2|T2]):-
	append([H2|_],[H1],[H2|T2]),
	append([H1|_],[H2],[H1|T1]).