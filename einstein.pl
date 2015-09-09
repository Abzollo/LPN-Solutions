%% A prolog solution to the Einstein's Riddle, based on this website:
%% http://www.iflscience.com/editors-blog/solving-einsteins-riddle
%% The solution looks complicated, but it's kind of easy to read.

:- ensure_loaded(sublist).

whohasfish(X) :-

Houses = [_,_,_,_,_],

%%%% Characteristics %%%%
GreenHouse = [nat(_),color(green),animal(_),drinks(_),smokes(_)],
WhiteHouse = [nat(_),color(white),animal(_),drinks(_),smokes(_)],
DrinksMilk = [nat(_),color(_),animal(_),drinks(milk),smokes(_)],
Norwegian = [nat(norwegian),color(_),animal(_),drinks(_),smokes(_)],
SmokesBlends = [nat(_),color(_),animal(_),drinks(_),smokes(blends)],
KeepsCat = [nat(_),color(_),animal(cat),drinks(_),smokes(_)],
SmokesDunhill = [nat(_),color(_),animal(_),drinks(_),smokes(dunhill)],
KeepsHorse = [nat(_),color(_),animal(horse),drinks(_),smokes(_)],
BlueHouse = [nat(_),color(blue),animal(_),drinks(_),smokes(_)],
DrinksWater = [nat(_),color(_),animal(_),drinks(water),smokes(_)],

%%%% Requirements %%%%
Req1 = [nat(brit),color(red),animal(_),drinks(_),smokes(_)],
member(Req1,Houses),

Req2 = [nat(swede), color(_), animal(dog),drinks(_),smokes(_)],
member(Req2,Houses),

Req3 = [nat(dane),color(_),animal(_),drinks(tea),smokes(_)],
member(Req3,Houses),

% Req4
onleft(GreenHouse,WhiteHouse,Houses),

Req5 = [nat(_),color(green),animal(_),drinks(coffee),smokes(_)],
member(Req5,Houses),

Req6 = [nat(_),color(_),animal(bird),drinks(_),smokes(pallmall)],
member(Req6,Houses),

Req7 = [nat(_),color(yellow),animal(_),drinks(_),smokes(dunhill)],
member(Req7,Houses),

% Req8
incenter(DrinksMilk,Houses),

% Req9
firsthouse(Norwegian,Houses),

% Req10
nextto(SmokesBlends,KeepsCat,Houses),

% Req11
nextto(SmokesDunhill,KeepsHorse,Houses),

Req12 = [nat(_),color(_),animal(_),drinks(beer),smokes(bluemaster)],
member(Req12,Houses),

Req13 = [nat(german),color(_),animal(_),drinks(_),smokes(prince)],
member(Req13,Houses),

% Req14
nextto(Norwegian,BlueHouse,Houses),

% Req15
nextto(SmokesBlends,DrinksWater,Houses),

%%%% Finally %%%%
member([nat(X),color(_),animal(fish),drinks(_),smokes(_)], Houses),!.

%% if you want to show houses, comment last line, uncomment two next lines.
%% member([nat(_),color(_),animal(fish),drinks(_),smokes(_)], Houses),
%% X = Houses, !.

%%%% Functions %%%%
onleft(X,Y,Z) :- sublist([X,Y],Z).
onright(X,Y,Z) :- onleft(Y,X,Z).
nextto(X,Y,Z) :- onleft(X,Y,Z).
nextto(X,Y,Z) :- onright(X,Y,Z).
incenter(X,Z) :- Z = [_,_,X,_,_].
firsthouse(X,Z) :- Z = [X,_,_,_,_].
