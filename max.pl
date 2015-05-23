max(L,Max):-  accMax(L,0,Max).

accMax([H|T],A,Max)  :- 
	H  >  A, 
	accMax(T,H,Max). 
    
accMax([H|T],A,Max)  :- 
	H  =<  A, 
	accMax(T,A,Max). 
    
accMax([],A,A).