directTrain(saarbruecken,dudweiler). 
directTrain(forbach,saarbruecken). 
directTrain(freyming,forbach). 
directTrain(stAvold,freyming). 
directTrain(fahlquemont,stAvold). 
directTrain(metz,fahlquemont). 
directTrain(nancy,metz).

route(X,Y,R):- route(X,Y,R,_).

route(X,Y,R,_):-
	directTrain(X,Y),
	R = [X,Y].
route(X,Y,R,_):-
	directTrain(Y,X),
	R = [X,Y].

route(X,Y,[X|TR],Previous):-
	directTrain(X,Z),
	Z \== Previous,
	route(Z,Y,TR,X).

route(X,Y,[X|TR], Previous):-
	directTrain(Z,X),
	Z \== Previous,
	route(Z,Y,TR,X).