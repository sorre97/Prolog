%%% -*- Mode: prolog -*-

%%% Es3 - Find the n-th element of a list

% element_at(X, List, Number).

element_at(X, [X | _], 1).
element_at(X, [_ | Xs], Pos) :-
    Pos > 1,
    Pos1 is Pos - 1,
    element_at(X, Xs, Pos1).
