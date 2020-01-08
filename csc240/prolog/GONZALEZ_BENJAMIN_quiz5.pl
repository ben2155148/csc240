% check_it/3
check_it(X,Y,A) :- X < Y, A is Y - X, !.
check_it(Y,Y,Y) :- !.
check_it(X,Y,A) :- X > Y, A is X - Y, !.

% cadr/2
cadr([_|[H2|_]], H2) :- !.

% fbscore/5
fbscore(T,F,S,X,N) :-
  member(T,[0,1,2,3,4,5,6,7,8,9,10]),
  member(F,[0,1,2,3,4,5,6,7,8,9,10]),
  member(S,[0,1,2,3,4,5,6,7,8,9,10]),
  member(X,[0,1,2,3,4,5,6,7,8,9,10]),
  X =< T,
  N is (T*6 + F*3 + S*2 + X).

:- write('check_it '), nl.
:- check_it(5, 15, A), write('  (5,15): '), write(A), nl.
:- check_it(15, 5, B), write('  (15,5): '), write(B), nl.
:- check_it(5, 5, C), write('   (5,5): '), write(C), nl.

:- nl, write('cadr'), nl.
:- cadr([1, 2, 3, 4, 5], C), write('  case 1: '), write(C), nl.
:- cadr([1, 2, 3], C), write('  case 3: '), write(C), nl.
:- cadr([1, 2], C), write('  case 2: '), write(C), nl.

%:- nl, write('remove_them'), nl.
%:- write('  2: '), remove_them([1,2,3,4,5,6,5,4,3,2,1], [], Lst), write(Lst), nl.
%:- write('  3: '), remove_them([1,2,3,4,5,6,5,4,3,2,1], [1, 6], Lst), write(Lst), nl.
%:- write(' 10: '), remove_them([1,2,3,4,5,6,5,4,3,2,1], [2,4,5], Lst), write(Lst), nl.

:- nl, write('fbscore'), nl.
:- fbscore(3, 2, 1, 2, Score), write(['T', 3, 'F', 2, 'S', 1, 'X', 2, 'Score', Score]), nl.
:- fbscore(1, F, 0, X, 10), write(['T', 1, 'F', F, 'S', 0, 'X', X, 'Score', 10]), nl, nl.
