:-  ensure_loaded([append]).

naiverev([],[]). 
naiverev([H|T],R):-  naiverev(T,RevT),  append(RevT,[H],R).