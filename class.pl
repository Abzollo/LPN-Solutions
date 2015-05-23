class(Number,positive)  :-  Number  >  0, !.
class(0,zero):- !.
class(Number,negative)  :-  Number  <  0.