%%% -*- Mode: prolog -*-

% my_last/2
% my_last(List, LastElement)

my_last([], []) :- !.

my_last([X], X) :- !.

my_last([_ | Xs], Y) :-
    !,
    my_last(Xs, Y).
