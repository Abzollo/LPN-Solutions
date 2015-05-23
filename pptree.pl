:-  module(pptree, [pptree/2]).
:- ensure_loaded([complexterm]).

pptree(Stream,X):-  pptree(Stream,X,0).
pptree(_,[],_).
pptree(Stream,X,Tab):-
	X \= [_|_],
	X \= [_],
	X =.. [H|T],
	T = [A|_],
	complexterm(A),
	nl(Stream),tab(Stream,Tab),write(Stream,H),write(Stream,'('),
	NewTab is Tab+3,
	pptree(Stream,T,NewTab),
	write(Stream,')').
pptree(Stream,X,Tab):-
	X \= [_|_],
	X \= [_],
	X =.. [_,A],
	atomic(A),
	nl(Stream),tab(Stream,Tab),write(Stream,X).
pptree(Stream,[H|T],Tab):-
	pptree(Stream,H,Tab),
	pptree(Stream,T,Tab).


% Important assumption: all leaves have the form f(a), where a is atomic.