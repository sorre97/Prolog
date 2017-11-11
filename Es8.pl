%%% -*- Mode: prolog -*-

%%% Es8 - Eliminate consecutive duplicates of list elements.

compress([], []).
compress([X], [X]).
compress([X, X | Xs], Zs):- compress([X | Xs] , Zs).
compress([X,Y | Xs] ,[X | Zs]):- X \= Y, compress([Y | Xs], Zs).
