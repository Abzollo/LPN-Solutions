s  --> simple_s.
s  -->  simple_s,conj,s.

simple_s  -->  np(subject),vp.

np(_)  -->  det,n.
np(X) -->  pro(X).

vp  -->  v,np(object).
vp  -->  v.

det  -->  [the].
det  -->  [a].

n  -->  [woman].
n  -->  [man].

v  -->  [shoots].

pro(subject) -->  [he].
pro(subject) -->  [she].
pro(object)  -->  [him].
pro(object)  -->  [her].

conj  -->  [and].
conj  -->  [or].
conj  -->  [but].