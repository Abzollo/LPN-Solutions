s0(X,Y):- s1(X,Z1), s2(Z1,Z2), s3(Z2,Y).

s1([choo|W],W).
s1(A,C):- s1(A,B), s1(B,C).

s2(A,C):- sub1(A,B), sub2(B,C).

sub1(A,C):- w1(A,B), w2(B,C).
w1([i|W],W).
w2([am|W],W).

sub2(A,C):- w3(A,B), w4(B,C).
w3([a|W],W).
w4([train|W],W).

s3([toot|W],W).
s3(A,C):- s3(A,B), s3(B,C).