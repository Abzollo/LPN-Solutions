% Solve the following puzzle using prolog:
% The Englishman lives in the red house.
% The jaguar is the pet of the Spanish family.
% The Japanese lives to the right of the snail keeper.
% The snail keeper lives to the left of the blue house.
% 
% Who keeps the zebra?
%

zebra(X):-

Houses = [_,_,_],

Eng = [nat(english),color(red),animal(_)],
Spn = [nat(spanish), color(_), animal(jaguar)],
Jap = [nat(japanese),color(_),animal(_)],

member(Eng,Houses),
member(Spn,Houses),
member(Jap,Houses),

Constraint1 = [SnailKeeper, Jap],
Constraint2 = [SnailKeeper, BlueHouse],

BlueHouse = [_,color(blue),_],
SnailKeeper = [_,_,animal(snail)],

sublist(Constraint1,Houses),
sublist(Constraint2,Houses),

member([nat(X),_,animal(zebra)],Houses).