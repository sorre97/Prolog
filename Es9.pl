%%% -*- Mode: prolog -*-

% Replace predicate definition
% replace/1 takes a list of strings and replace
% OLD value with NEW


replace(Old, New, [X| Xs], [New | Out]) :-
    X = Old,
    !,
    replace(Old, New, Xs, Out).

replace(Old, New, [X | Xs], [X | Out]) :-
    X \= Old,
    !,
    replace(Old, New, Xs, Out).


replace(_, _, [], []) :- !.
