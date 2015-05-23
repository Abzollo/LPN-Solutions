nu3(X,_):- var(X),!,fail.
nu3(_,Y):- var(Y),!,fail.
nu3(X,Y):- X==Y,!,fail.
nu3(_,_).