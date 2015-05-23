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

travel2(X,Y,R):-
	byCar(X,Y),
	R = go(X,Y).
travel2(X,Y,R):-
	byTrain(X,Y),
	R = go(X,Y).
travel2(X,Y,R):-
	byPlane(X,Y),
	R = go(X,Y).

travel2(X,Y,R):-
	byCar(X,Z),
	travel2(Z,Y,Rin),
	R = go(X,Z,Rin).
travel2(X,Y,R):-
	byTrain(X,Z),
	travel2(Z,Y,Rin),
	R = go(X,Z,Rin).
travel2(X,Y,R):-
	byPlane(X,Z),
	travel2(Z,Y,Rin),
	R = go(X,Z,Rin).