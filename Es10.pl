%%% -*- Mode: prolog -*-

% rimuovi_doppioni/2
% rimuovi_doppioni(List, NewList)

% rimuovi_doppioni([], []) :- !.

rimuovi_doppioni([X], [X]) :- !.

rimuovi_doppioni([X, X | Xs], Zs) :-
	!,
	rimuovi_doppioni([X | Xs], Zs).

rimuovi_doppioni([X, Y | Ys], [X | Zs]) :-
	X \= Y,
	!,
	rimuovi_doppioni([Y | Ys], Zs).
