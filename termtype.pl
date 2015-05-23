termtype(X,variable):- var(X).
termtype(X,atom):- atom(X).
termtype(X,number):- number(X).
termtype(X,constant):- atomic(X).
termtype(X,simple_term):- nonvar(X), functor(X,_,N), N =:= 0.
termtype(X,complex_term):- nonvar(X), functor(X,_,N), N>0.
termtype(_,term).