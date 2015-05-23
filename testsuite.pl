% Test each sentence in an input file (check example testinput.txt)
% Multiple spaces between words will act as a sentence seperator like '.' and '\n'.
% Place + before a sentence to test and parse the sentence.
% Place - (or nothing) before a sentence to skip parsing and just test the sentence.
% I didn't understand what the author meant by:
% "...so that it checks whether the expected output matches the obtained output."
% So I just skipped this step.
% Check the files testinput.txt and testoutput.txt to see how it works.
% Try test('testinput.txt','testoutput.txt').

:-  use_module(dcg_miniproject).
:-  use_module(pptree).

test(Input,Output):-
	open(Input,read,InStream),
	open(Output,write,OutStream),
	doSentences(InStream,OutStream),
	close(InStream),
	close(OutStream).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

doSentences(InStream,_):-
	at_end_of_stream(InStream),!.
doSentences(InStream,OutStream):-
	readAllWords(InStream,OutStream,List,_),
	List = [Parse|Sentence],
	write(OutStream,.),nl(OutStream),
	doparse(OutStream,Sentence,Parse),
	nl(OutStream),nl(OutStream),
	doSentences(InStream,OutStream),!.
doSentences(InStream,OutStream):-
	doSentences(InStream,OutStream).


doparse(OutStream,Sentence,+):-
	printtree(OutStream,Sentence),
	nl(OutStream).
doparse(OutStream,Sentence,-):-
	dontprinttree(OutStream,Sentence),
	nl(OutStream).
doparse(OutStream,Rem,First):-
	dontprinttree(OutStream,[First|Rem]),
	nl(OutStream).


printtree(OutStream,Sentence):-
	s(Tree,Sentence,[]),
	pptree(OutStream,Tree),!.
printtree(OutStream,_):-
	nl(OutStream),write(OutStream,false).

dontprinttree(OutStream,Sentence):-
	s(_,Sentence,[]),
	nl(OutStream),write(OutStream,true),!.
dontprinttree(OutStream,_):-
	nl(OutStream),write(OutStream,false).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

readAllWords(InStream,OutStream,[Word|Rem],cont):-
	readWord(InStream,Word,Do),
	Word \= '',
	write(OutStream,Word),write(OutStream,' '),
	readAllWords(InStream,OutStream,Rem,Do),!.
readAllWords(InStream,OutStream,Rem,cont):-
	readAllWords(InStream,OutStream,Rem,stop),!.
readAllWords(_,_,[],stop).


readWord(InStream,W,Do):-
	get_code(InStream,Char),
	checkCharAndReadRest(Char,Chars,InStream,Do),
	atom_codes(W,Chars).

checkCharAndReadRest(32,[],_,cont):-  !.  % Space
checkCharAndReadRest(10,[],_,stop):-  !.  % Line break
checkCharAndReadRest(46,[],_,stop):-  !.  % Full stop
checkCharAndReadRest(-1,[],_,stop):-  !.  % End of file
checkCharAndReadRest(end_of_file,[],_,stop):-  !.
checkCharAndReadRest(Char,[Char|Chars],InStream,Do):-
	get_code(InStream,NextChar),
	checkCharAndReadRest(NextChar,Chars,InStream,Do).

