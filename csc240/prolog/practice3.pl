% pair_reverse/2
pair_reverse([H1, H2], [H2, H1]) :- !.
pair_reverse([H1, H2, H3], [H2, H1, H3]) :- !.
pair_reverse([H1, H2 | T1], [H2, H1 | T2]) :- pair_reverse(T1,T2).

% at_position/3
at_position(1,[H|_],H) :- !.
at_position(X,[_|T],H) :- X > 1, X2 is X-1, at_position(X2,T,H).

% distance/3
distance([X1|Y1],[X2|Y2],D) :-
  Xdiff is X2-X1,
  Xsq is Xdiff * Xdiff,
  Ydiff is Y2-Y1,
  Ysq is Ydiff * Ydiff,
  Sum is Xsq + Ysq,
  D is sqrt(Sum).

% clean_list/2
clean_list([],[]) :- !.
clean_list([X|T],[X|T2]) :- number(X), clean_list(T,T2).
clean_list([_|T],T2) :- clean_list(T,T2).

% squares/2
squares([],[]) :- !.
squares([H|T],[H2|T2]) :- number(H), H2 is H * H, squares(T,T2), !.
squares([_|T],T2) :- squares(T,T2).

% sum_squares/2
sum_squares([],0) :- !.
sum_squares([H|T],Sum) :- number(H), sum_squares(T, SumT), !, Sum is SumT + (H * H).
sum_squares([_|T],Sum) :- sum_squares(T,Sum).

% get_values/2
sumlist([], 0).
sumlist([H | T], Sum) :- sumlist(T, SumT), Sum is SumT + H.

get_values([],[]) :- !.
get_values([[H|T]|T1],[H2|T2]) :- sumlist([H|T],H2), !, get_values(T1, T2).
get_values([H|T],[H|T2]) :- get_values(T,T2).

 % nomatch/3
 nomatch([],[],[]) :- !.
 nomatch([H|T],[H|T1],T2) :- nomatch(T,T1,T2), !.
 nomatch([_|T],[H2|T1],[H2|T2]) :- nomatch(T,T1,T2), !.

 % flattenit/2 % look at solutions for this one later
 flattenit([],[]) :- !.
 flattenit([H|T],[H|T2]) :- flattenit(T,T2).
 flattenit([[H|T]|T1],[H|T2]) :- flattenit([T|T1],T2).
 flattenit([[]|T1], T2) :- flattenit(T1,T2).
