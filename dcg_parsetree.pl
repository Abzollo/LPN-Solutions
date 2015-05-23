s(s(NP,VP))  -->  np(NP),vp(VP).

np(np(DET,N))  -->  det(DET),n(N).

vp(vp(V,NP))  -->  v(V),np(NP).
vp(vp(V))  -->  v(V).

det(det(the))  -->  [the].
det(det(a))  -->  [a].

n(n(woman))  -->  [woman].
n(n(man))  -->  [man].

v(v(shoots))  -->  [shoots].