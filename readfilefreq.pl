:-  ensure_loaded([readWord]).
:-  dynamic word/2.

readfilefreq(File):- 
	retractall(word(_,_)),
	open(File,read,Stream),
	read_myfile(Stream),
	close(Stream).

read_myfile(Stream):-
	at_end_of_stream(Stream), !.

read_myfile(Stream):-
	readWord(Stream,Word),
	recordWord(Word),
	read_myfile(Stream).

recordWord(Word):-
	word(Word,X),	
	Xnew is X+1,	
	retract(word(Word,X)),
	assert(word(Word,Xnew)),!.
recordWord(Word):-
	assert(word(Word,1)).


% Try readfilefreq('readthisfile.txt').