unifiable([],_,[]).
unifiable([H|T1],Term,[H|T2]):-  \+ \+ Term = H,!, unifiable(T1,Term,T2).
unifiable([H|T1],Term,T2):-  \+ Term = H, unifiable(T1,Term,T2).