:-  ensure_loaded([append]).

toptail([_|T],R):- append(R,[_],T).