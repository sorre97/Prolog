%%% -*- Mode: prolog -*-

% last_but_one/2
% last_but_one(List, LastButOneElement)

last_but_one(X, X) :- !.

last_but_one([X, _], X) :- !.

last_but_one([_ | Xs] , Y) :-
    !,
    last_but_one(Xs, Y).
