:-  module(dcg_miniproject, [s/3]).


%% ---- Lexicon: lex(Word,Type,Plurality,Case,Person) ---- %%

lex(the,det,singular,_,_).
lex(the,det,plural,_,_).
lex(a,det,singular,_,_).

lex(big,adj,_,_,_).
lex(small,adj,_,_,_).
lex(good,adj,_,_,_).
lex(bad,adj,_,_,_).
lex(fat,adj,_,_,_).
lex(thin,adj,_,_,_).
lex(sexy,adj,_,_,_).
lex(happy,adj,_,_,_).
lex(sad,adj,_,_,_).
lex(tall,adj,_,_,_).
lex(short,adj,_,_,_).
lex(beautiful,adj,_,_,_).
lex(ugly,adj,_,_,_).
lex(great,adj,_,_,_).
lex(real,adj,_,_,_).
lex(alive,adj,_,_,_).
lex(dead,adj,_,_,_).
lex(frightened,adj,_,_,_).

lex(woman,n,singular,_,_).
lex(women,n,plural,_,_).
lex(man,n,singular,_,_).
lex(men,n,plural,_,_).
lex(apple,n,singular,_,_).
lex(apples,n,plural,_,_).
lex(pear,n,singular,_,_).
lex(pears,n,plural,_,_).
lex(cow,n,singular,_,_).
lex(cows,n,plural,_,_).
lex(tree,n,singular,_,_).
lex(trees,n,plural,_,_).
lex(shower,n,singular,_,_).
lex(shower,n,plural,_,_).
lex(table,n,singular,_,_).
lex(tables,n,plural,_,_).

lex(on,loc,_,_,_).
lex(under,loc,_,_,_).
lex(above,loc,_,_,_).
lex(behind,loc,_,_,_).
lex(beside,loc,_,_,_).
lex(over,loc,_,_,_).
lex(below,loc,_,_,_).

lex(shoots,v,singular,_,third).
lex(shoot,v,plural,_,third).
lex(shoot,v,_,_,first).
lex(shoot,v,_,_,second).
lex(eats,v,singular,_,third).
lex(eat,v,plural,_,third).
lex(eat,v,_,_,first).
lex(eat,v,_,_,second).

lex(and,conj,_,_,_).
lex(or,conj,_,_,_).
lex(but,conj,_,_,_).

lex(i,pro,singular,subject,first).
lex(we,pro,plural,subject,first).
lex(me,pro,singular,object,first).
lex(us,pro,plural,object,first).
lex(you,pro,singular,subject,second).
lex(you,pro,plural,subject,second).
lex(you,pro,singular,object,second).
lex(you,pro,plural,object,second).
lex(he,pro,singular,subject,third).
lex(she,pro,singular,subject,third).
lex(it,pro,singular,subject,third).
lex(they,pro,plural,subject,third).
lex(him,pro,singular,object,third).
lex(her,pro,singular,object,third).
lex(it,pro,singular,object,third).
lex(them,pro,plural,object,third).


%% ---- DCG ---- %%

s(S)  --> simple_s(S).
s(s(S1,CONJ,S2))  -->  simple_s(S1), conj(CONJ), s(S2).

simple_s(s(NP,VP))  -->  np(NP, Pl,subject,Pe), vp(VP, Pl,_,Pe).

np(np(DET,N), Pl,_,third)  -->  det(DET, Pl), n(N, Pl).
np(np(DET,ADJ,N), Pl,_,third)  -->  det(DET, Pl), adj(ADJ), n(N, Pl).
np(np(DET,N,PREP), Pl,_,third)  -->  det(DET, Pl), n(N, Pl), prep(PREP).
np(np(DET,ADJ,N,PREP), Pl,_,third)  -->  det(DET, Pl), adj(ADJ), n(N, Pl), prep(PREP).
np(np(PRO), Pl,C,Pe) -->  pro(PRO, Pl,C,Pe).

prep(prep(LOC,NP))  -->  loc(LOC), np(NP, _,object,_).

vp(vp(V,NP), Pl,_,Pe)  -->  v(V, Pl,Pe), np(NP, _,object,_).
vp(vp(V), Pl,_,Pe)  -->  v(v(V), Pl,Pe).


%% ---- Associating lexicons ---- %%

det(det(Word), Pl)  -->  [Word], {lex(Word,det,Pl,_,_)}.
adj(ADJ)  -->  simple_adj(ADJ).
adj(adj([ADJH|ADJT]))  -->  simple_adj(adj(ADJH)),adj(adj(ADJT)).
simple_adj(adj(Word))  -->  [Word], {lex(Word,adj,_,_,_)}.
n(n(Word), Pl)  -->  [Word], {lex(Word,n,Pl,_,_)}.
loc(loc(Word))  -->  [Word], {lex(Word,loc,_,_,_)}.
v(v(Word), Pl,Pe)  -->  [Word], {lex(Word,v,Pl,_,Pe)}.
pro(pro(Word), Pl,C,Pe) -->  [Word], {lex(Word,pro,Pl,C,Pe)}.
conj(conj(Word))  -->  [Word], {lex(Word,conj,_,_,_)}.

