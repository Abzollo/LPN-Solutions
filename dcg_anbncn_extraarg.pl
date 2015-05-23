%  Try anbncn(5,X,[]).

anbncn(Count)  -->  a(Count),b(Count),c(Count).

a(0)  --> [].
a(NewCount)  -->  [a],a(Count), {NewCount is Count + 1}.

b(0)  --> [].
b(NewCount)  -->  [b],b(Count), {NewCount is Count + 1}.

c(0)  --> [].
c(NewCount)  -->  [c],c(Count), {NewCount is Count + 1}.