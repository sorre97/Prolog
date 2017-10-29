%%% -*- Mode: prolog -*-

%%% Es2 - Find the last but one element of a list

last_but_one([X, _], X).
last_but_one([X], X).

last_but_one([_ | Ys], X):-
    last_but_one(Ys, X), !.
