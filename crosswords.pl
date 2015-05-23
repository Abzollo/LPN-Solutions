word(astante,  a,s,t,a,n,t,e). 
word(astoria,  a,s,t,o,r,i,a). 
word(baratto,  b,a,r,a,t,t,o). 
word(cobalto,  c,o,b,a,l,t,o). 
word(pistola,  p,i,s,t,o,l,a). 
word(statale,  s,t,a,t,a,l,e).

cross(V1,V2,V3,H1,H2,H3):-

	word(H1,  _H1_1, A, _H1_3, B, _H1_5, C, _H1_7),
	word(H2,  _H2_1, D, _H2_3, E, _H2_5, F, _H2_7),
	word(H3,  _H3_1, G, _H3_3, H, _H3_5, I, _H3_7),

	word(V1,  _V1_1, A, _V1_3, D, _V1_5, G, _V1_7),
	word(V2,  _V2_1, B, _V2_3, E, _V2_5, H, _V2_7),
	word(V3,  _V3_1, C, _V3_3, F, _V3_5, I, _V3_7).