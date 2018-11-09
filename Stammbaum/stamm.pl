% -------------------------------------------------------
% 
% Stammbaum
% 
% -------------------------------------------------------
 
maennlich(robert).
maennlich(stephen).
maennlich(henry).
maennlich(peter).
maennlich(john).
maennlich(george).
maennlich(richard).
maennlich(james).

weiblich(mary).
weiblich(donna).
weiblich(pamela).
weiblich(julia).
weiblich(elizabeth).
weiblich(roberta).
weiblich(susan).
weiblich(harriet).
weiblich(catherine).
weiblich(melissa).

elternteil(john,donna).
elternteil(john,mary).
elternteil(john,george).
elternteil(catherine, donna).
elternteil(catherine,mary).
elternteil(catherine,george).
elternteil(pamela,james).
elternteil(george,james).

elternteil(mary,julia).
elternteil(mary,peter).
elternteil(richard,julia).
elternteil(richard,peter).

elternteil(robert,stephen).
elternteil(robert,henry).
elternteil(elizabeth,stephen).
elternteil(elizabeth,henry).

elternteil(henry,harriet).
elternteil(henry,susan).
elternteil(roberta,harriet).
elternteil(roberta,susan).

elternteil(peter,melissa).
elternteil(harriet,melissa).

ungleich(X,Y) :- X\=Y.

vater(X,Y) :- elternteil(X,Y), maennlich(X).
kind(X,Y) :- elternteil(Y,X).
sohn(X,Y) :- kind(X,Y), maennlich(X).
tochter(X,Y) :- kind(X,Y), weiblich(X).

verheiratet(X,Y) :- elternteil(X,Z), elternteil(Y,Z), ungleich(X, Y).

mutter(X, Y) :- weiblich(X), elternteil(X, Y).
schwiegermutter(X,Y) :- verheiratet(Y,Z), mutter(X,Z).
schwiegervater(X, Y) :- verheiratet(Y,Z), vater(X,Z).

grossmutter(X,Y) :- mutter(X,Z), elternteil(Z,Y).
grossvater(X,Y) :- vater(X,Z), elternteil(Z,Y).

bruder(X,Y) :- maennlich(X), elternteil(Z,X), elternteil(Z,Y), ungleich(X, Y).



