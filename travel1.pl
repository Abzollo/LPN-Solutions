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

travel1(X,Y):-
	byCar(X,Y).
travel1(X,Y):-
	byTrain(X,Y).
travel1(X,Y):-
	byPlane(X,Y).

travel1(X,Y):-
	byTrain(X,Z),
	travel1(Z,Y).
travel1(X,Y):-
	byCar(X,Z),
	travel1(Z,Y).
travel1(X,Y):-
	byPlane(X,Z),
	travel1(Z,Y).