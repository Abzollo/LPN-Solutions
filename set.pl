% first line is important, start with an initialized set consisting of the first term
% we do that to avoid unifying heads with a variable, which ends up with a variable tail
% the inside function (set/3) returns a reversed set
% first check if term is member of set so far
% if false, add term to set

:-  ensure_loaded([member, rev]).

set([H|T],X):- set([H|T],[H],R), rev(R,X),!.
set([],R,R).
set([H|T1],T2,R):-  member(H,T2), set(T1,T2,R).
set([H|T1],T2,R):-  set(T1,[H|T2],R).