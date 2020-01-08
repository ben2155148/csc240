% recursiveFunction/2
recursiveFunction(X,1) :- X =< 1.
recursiveFunction(X,Y) :- recursiveFunction(X-1,Y2), !, Y is X * X * Y2.
