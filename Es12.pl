%%% -*- Mode: prolog -*-

% insert_at/3
% insert_at(Element, List, Pos, NewList)

insert_at(E, List, 1, [E | List]) :- !.

insert_at(E, [X | Xs], Pos, [X | Zs]) :-
    Pos \= 0,
    !,
    Pos1 is Pos -1,
    insert_at(E, Xs, Pos1, Zs).

insert_at(E, [X | Xs], Pos, [E, X | Xs]) :-
    Pos = 0,
    !.

insert_at(_, _, Pos, _) :-
    Pos < 0,
    !,
    write("The inserted value is out of range"),
    fail.

insert_at(_, List, Pos, _) :-
    length(List, X),
    Pos > X,
    !,
    write("The inserted value is out of range"),
    fail.
