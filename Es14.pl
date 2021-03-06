%%% -*- Mode: prolog -*-

% my_flatten/2
% my_flatten(List, FlattenedList)

my_flatten([], []) :- !.

my_flatten([X | Xs], Res) :-
    !,
    my_flatten(X, Y),
    my_flatten(Xs, Ys),
    append(Y, Ys, Res).

my_flatten(X,[X]) :- \+ is_list(X).
