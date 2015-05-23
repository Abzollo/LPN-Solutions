% Explanation:
% 1: take only nested list term, reduce to one square bracket list, fail otherwise
% 2: flatten the one square bracket list, append to tail, flatten tails and so on
% 3: simple terms will end up here, just unify heads and continue flattening tails
%
% try	flatten([[1, 2],x,[[3],[[4, 5],[]]]],X).
% [[1, 2],x,[[3],[[4, 5],[]]]]  ==>  [1,2,x,3,4,5]
%
% try	flatten([a,b,[[[[[[[c,d]]]]]]],[[1,2]],foo,[]],X).
% [a,b,[[[[[[[c,d]]]]]]],[[1,2]],foo,[]]  ==>  [a,b,c,d,1,2,foo].

:-  ensure_loaded([append]).

flatten([],[]).
flatten([H|T1],R):-  [H]=[_], rid(H,Hrid), flatten(Hrid|T1,R).
flatten([Hrid|T1],R):-  flatten(Hrid,Flat), append(Flat,T2,R), flatten(T1,T2).
flatten([H|T1],[H|T2]):- flatten(T1,T2).

rid([X],Y):-rid(X,Y).
rid([X|Y],[X|Y]).