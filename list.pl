member(X,[X|_]). 
member(X,[_|T])  :-  member(X,T).

last([X],X).
last([_|T],X):-  last(T,X).

len([],0). 
len([_|T],N)  :-  len(T,X),  N  is  X+1.

max(L,Max):-  accMax(L,0,Max).
accMax([H|T],A,Max)  :-  H  >  A,  accMax(T,H,Max). 
accMax([H|T],A,Max)  :-  H  =<  A,  accMax(T,A,Max). 
accMax([],A,A).

min(L,Min):-  accMin(L,0,Min).
accMin([H|T],A,Min)  :-  H  <  A,  accMin(T,H,Min).
accMin([H|T],A,Min)  :-  H  >=  A,  accMin(T,A,Min).
accMin([],A,A).

append([],L2,L2).
append([H1|L1],L2,[H1|L3]):-  append(L1,L2,L3).

prefix(P,L):-  append(P,_,L).

suffix(S,L):-  append(_,S,L).

sublist(SubL,L):-  suffix(S,L),  prefix(SubL,S).

rev(L,R):-  accRev(L,[],R).
accRev([H|T],A,R):-  accRev(T,[H|A],R). 
accRev([],A,A).