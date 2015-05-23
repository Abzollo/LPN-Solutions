trans(eins,one).
trans(zwei,two).
trans(drei,three).
trans(vier,four).
trans(fuenf,five).
trans(sechs,six).
trans(sieben,seven).
trans(acht,eight).
trans(neun,nine).


listtrans([],[]).

listtrans([HG|TG],[HE|TE]):-
	trans(HG,HE),
	listtrans(TG,TE).
	
	