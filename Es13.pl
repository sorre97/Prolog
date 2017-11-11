%%% -*- Mode: prolog -*-

% range/3
% range(I, I2, List)

range(I, I, [I]) :- !.

range(I, I2, [I | Zs]) :-
    I \= I2,
    !,
    I1 is I + 1,
    range(I1, I2, Zs).
