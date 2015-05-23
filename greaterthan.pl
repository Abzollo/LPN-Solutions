/*
EXAMPLE
greater_than(succ(succ(succ(0))),succ(0)). 
true. 
?-  greater_than(succ(succ(0)),succ(succ(succ(0)))). 
false.
*/


greater_than(succ(X), 0).
greater_than(succ(X), succ(Y)):-
	greater_than(X, Y).