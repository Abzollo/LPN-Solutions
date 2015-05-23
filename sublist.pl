prefix(P,L):-  append(P,_,L).
suffix(S,L):-  append(_,S,L).
sublist(SubL,L):-  suffix(S,L),  prefix(SubL,S).