%%% -*- Mode: prolog -*-

%%% Es4 - Find the number of elements of a list

% count_elements(List, NumberOfElements).

count_elements([], 0).
count_elements([_ | Xs], N) :-
    count_elements(Xs, N1),
    N is N1 + 1.
