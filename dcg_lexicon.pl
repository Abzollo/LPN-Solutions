lex(the,det).
lex(a,det).
lex(woman,n).
lex(man,n).
lex(shoots,v).

s  -->  np,vp.

np  -->  det,n.

vp  -->  v,np.
vp  -->  v.

det  -->  [Word], {lex(Word,det)}.
n  -->  [Word], {lex(Word,n)}.
v  -->  [Word], {lex(Word,v)}.
