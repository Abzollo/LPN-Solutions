loves(vincent,mia).
loves(marsellus,mia).

jealous(X,Y):-  loves(X,Z),  loves(Y,Z),  X \== Y.