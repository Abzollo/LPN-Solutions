:-  op(300,  xfx,  [are,  is_a]). 
:-  op(300,  fx,  likes). 
:-  op(200,  xfy,  and). 
:-  op(100,  fy,  famous).

X  is_a  witch.  % is_a(X,witch)
harry  and  ron  and  hermione  are  friends.  % are(and(harry,and(ron,hermione)),friends)
harry  is_a  wizard  and  likes  quidditch.  % (likes prec) > (and prec)  --> Clash
dumbledore  is_a  famous  wizard.  % is_a(dumbledore,famous(wizard))