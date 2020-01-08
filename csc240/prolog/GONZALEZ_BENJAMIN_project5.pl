% states/5
states(TN, MS, AL, LA, AR) :-
  member(TN, [red, blue, green]),
  member(MS, [red, blue, green]),
  member(AL, [red, blue, green]),
  member(LA, [red, blue, green]),
  member(AR, [red, blue, green]),
  TN \= MS, TN \= AR, TN \= AL,
  AR \= LA, AR \= TN, AR \= MS,
  MS \= LA, MS \= AR, MS \= TN, MS \= AL,
  AL \= TN, AL \= MS,
  LA \= AR, LA \= MS.

% invert/2
is_list([_H | _T]).

invert([],[]) :- !.
invert([H|T], Result) :- is_list(H), !, invert(H, X), invert(T,Y), append([X],Y,Result).
invert([H|T], Result) :- invert(T, T1), append(T1, [H], Result).

% slope/3
slope([X1|Y1],[X2|Y2],S) :- S is ((Y2 - Y1) / (X2 - X1)).

% squash/2
squash([], []) :- !.
squash([H|T], Result) :- !, squash(H, X), squash(T, Y), append(X, Y, Result).
squash(X, [X]).

% eval_term/3
eval_term([Coeff | Exp], Value, Result) :- Result is Value ** Exp * Coeff.

% eval_poly/3
eval_poly([], _, 0) :- !.
eval_poly([H|T], Value, Result) :-
  eval_term(H, Value, TResult),
  eval_poly(T, Value, NResult),
  Result is TResult + NResult.

% gen_poly/1
gen_poly([H|T]) :- assert((f(Value,Result) :- eval_poly([H|T], Value, Result))).

:- nl, write('States: ').
:- states(TN,MS,AL,LA,AR),
    write(['TN', TN, ' MS', MS, ' AL', AL, ' LA', LA, ' AR', AR]), nl.
:- nl, write('invert/2:'), nl.
:- write('  1: '), invert([1,2,3],X), write(X), nl.
:- write('  1: '), invert([1,2,[3,4,[5,[6,7,[8]]]]],X), write(X), nl.
:- nl, write('slope/3:'), nl.
:- write('  1: '), slope([-4 | -4], [2 | 2], X), write(X), nl.
:- write('  2: '), slope([1 | 7], [4 | 11], X), write(X), nl.
:- write('  3: '), slope([-2 | 8], [3 | -4], X), write(X), nl.
:- nl, write('squash/2:'), nl.
:- write('  1: '), squash([a,b,c,d,e,f],X), write(X), nl.
:- write('  2: '), squash([1,1,2,2,3,4,[5,6,[7,8]]],X), write(X), nl.
:- write('  3: '), squash([[2,4,6,8],1,2,[3,4,[5,6],7],8],X), write(X), nl.
:- write('  4: '), squash([[c],[s,c,h,e,m,e],[p,r,o,l,o,g]], X), write(X), nl.
:- nl.
:- nl, write('Polynomials:'), nl.
:- write('  eval_term1: '), eval_term([1 | 1],2,X), write(X), nl.
:- write('  eval_term2: '), eval_term([3 | 2],5,X), write(X), nl.
:- write('  eval_poly1: '), eval_poly([[3 | 2]],5, X), write(X), nl.
:- write('  eval_poly2: '), eval_poly([[1 | 2], [2 | 1], [3 | 0]],1, X), write(X), nl.
:- write('  eval_poly3: '), eval_poly([[1 | 2], [2 | 1], [3 | 0]],2, X), write(X), nl.
:- write('  eval_poly4: '), eval_poly([[2 | 3], [3 | 2], [7 | 1], [9 | 0]],5,X), write(X), nl.
:- retractall(f(_X,_Y)).   % make sure f/2 is not already defined
:- write('  gen_poly1a: '), gen_poly([[1 | 2], [2 | 1], [3 | 0]]), f(2,X), write(X), nl.
:- write('  gen_poly1b: '), f(5,X), write(X), nl.
:- retractall(f(_X,_Y)).   % retract f/2 defined above
:- write('  gen_poly2a: '), gen_poly([[2 | 3], [3 | 2], [7 | 1], [9 | 0]]), f(1,X), write(X), nl.
:- write('  gen_poly2b: '), f(5,X), write(X), nl, nl.
