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


travel3(X,Y,R):-
	byCar(X,Y),
	R = go_byCar(X,Y).
travel3(X,Y,R):-
	byTrain(X,Y),
	R = go_byTrain(X,Y).
travel3(X,Y,R):-
	byPlane(X,Y),
	R = go_byPlane(X,Y).


travel3(X,Y,R):-
	byCar(X,Z),
	travel3(Z,Y,Rin),
	R = go_byCar(X,Z,Rin).
travel3(X,Y,R):-
	byTrain(X,Z),
	travel3(Z,Y,Rin),
	R = go_byTrain(X,Z,Rin).
travel3(X,Y,R):-
	byPlane(X,Z),
	travel3(Z,Y,Rin),
	R = go_byPlane(X,Z,Rin).