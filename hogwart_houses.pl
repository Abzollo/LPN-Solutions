do_hogwart:-
open('hogwarts.houses',write,Stream), 
tab(Stream, 10), write(Stream,'gryffindor'),  nl(Stream),
write(Stream,'hufflepuff'), tab(Stream, 9), write(Stream,'ravenclaw'),  nl(Stream),
tab(Stream, 10), write(Stream,'slytherin'),  nl(Stream),
close(Stream).