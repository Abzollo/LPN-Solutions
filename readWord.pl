readWord(InStream,W):-
	get_code(InStream,Char),
	checkCharAndReadRest(Char,Chars,InStream),
	atom_codes(W,Chars).

checkCharAndReadRest(32,[],_):-  !.  % Space
checkCharAndReadRest(10,[],_):-  !.  % Line break
checkCharAndReadRest(46,[],_):-  !.  % Full stop
checkCharAndReadRest(-1,[],_):-  !.  % End of file
checkCharAndReadRest(end_of_file,[],_):-  !.

checkCharAndReadRest(Char,[Char|Chars],InStream):-
	get_code(InStream,NextChar),
	checkCharAndReadRest(NextChar,Chars,InStream).
