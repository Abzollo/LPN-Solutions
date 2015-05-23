anbncn(Count)  -->  a(Count),b(Count),c(Count).

a(0)  --> [].
a(succ(Count))  -->  [a],a(Count).

b(0)  --> [].
b(succ(Count))  -->  [b],b(Count).

c(0)  --> [].
c(succ(Count))  -->  [c],c(Count).