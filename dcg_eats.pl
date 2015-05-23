s  -->  np(X),vp(X).

np(X)  -->  det(X),n(X). 

vp(X)  -->  v(X),np(_).
vp(X)  -->  v(X).

det(_)  -->  [the]. 
det(singular)  -->  [a].
 
n(singular)  -->  [woman].
n(singular)  -->  [man].
n(singular)  -->  [apple].
n(singular)  -->  [pear].

n(plural)  -->  [women].
n(plural)  -->  [men].
n(plural)  -->  [apples]. 
n(plural)  -->  [pears].
 
v(singular)  -->  [eats].
v(singular)  -->  [knows].

v(plural)  -->  [eat].
v(plural)  -->  [know].