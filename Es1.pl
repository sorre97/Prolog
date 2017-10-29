%%% -*- Mode: prolog -*-

%%% Es1 - Find the last element of a list

last_element([X], [X]).

last_element([_ | Xs] , Y) :-
    last_element(Xs,  Y),
    !.
