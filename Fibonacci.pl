fib_rek(0,1).
fib_rek(1,1).
fib_rek(X,F) :- X > 1,
X1 is X-1,
X2 is X-2,
fib_rek(X1,F1),
fib_rek(X2,F2),
F is F1 + F2.
