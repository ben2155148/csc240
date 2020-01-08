show(seinfeld, 1989, 8.9).
show(twin_peaks, 1990, 8.9).
show(the_xfiles, 1993, 8.7).
show(friends, 1994, 8.9).
show(the_shield, 2002, 8.7).
show(the_wire, 2002, 9.4).
show(firefly, 2002, 9.1).
show(friday_night_lights, 2006, 8.6).
show(the_walking_dead, 2010, 8.4).
show(game_of_thrones, 2011, 9.4).
show(silicon_valley, 2014, 8.5).
show(mr_robot, 2015, 8.6).
show(atlanta, 2016, 8.5).

% good_show/1
good_show(Name) :- show(Name,_,Rating), Rating >= (8.9).

% pairs/1
pairs(StartYear) :-
  show(Name1, StartYear, _),
  show(Name2, StartYear, _),
  Name1 \= Name2,
  write(Name1),
  write(' '),
  write(Name2 ).

% quad/2
quad(A, B) :- B is 4 * A.

% bloop/2
bloop(X, Y) :-
  X >= 1,
  Y is 2 * X.
bloop(X, Y) :-
  X =< -1,
  Y is 0.5 * X.

% mult/3
mult(D, E, F) :- F is D * E.

% bigger/3
bigger(J, K, L) :-
  J > K,
  L is J.
bigger(J, K, L) :-
  K >= J,
  L is K.

% absol/2
absol(Q, R) :-
  Q =< -1,
  R is -1 * Q.
absol(Q, R) :-
  Q >= 0,
  R is Q.
