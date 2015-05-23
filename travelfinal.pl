% Shows only ONE correct route.

byCar(auckland, hamilton).
byCar(hamilton, raglan).
byCar(valmont, saarbruecken).
byCar(valmont, metz).

byTrain(metz, frankfurt).
byTrain(saarbrucken, frankfurt).
byTrain(metz, paris).
byTrain(saarbruecken, paris).

byPlane(frankfurt, bangkok).
byPlane(frankfurt, singapore).
byPlane(paris, losAngeles).
byPlane(bangkok, auckland).
byPlane(singapore, auckland).
byPlane(losAngeles, auckland).


travelfinal(X,Y):-
	byCar(X,Y),!,
	write('go from '),write(X),write(' to '),write(Y), write(' by '),write('car.').
travelfinal(X,Y):-
	byTrain(X,Y),!,
	write('go from '),write(X),write(' to '),write(Y), write(' by '),write('train.').
travelfinal(X,Y):-
	byPlane(X,Y),!,
	write('go from '),write(X),write(' to '),write(Y), write(' by '),write('plane.').


travelfinal(X,Y):-
	byCar(X,Z),!,
	write('go from '),write(X),write(' to '),write(Z), write(' by '),write('car.'),nl,
	travelfinal(Z,Y).
travelfinal(X,Y):-
	byTrain(X,Z),!,
	write('go from '),write(X),write(' to '),write(Z), write(' by '),write('train.'),nl,
	travelfinal(Z,Y).
travelfinal(X,Y):-
	byPlane(X,Z),!,
	write('go from '),write(X),write(' to '),write(Z), write(' by '),write('plane.'),nl,
	travelfinal(Z,Y).