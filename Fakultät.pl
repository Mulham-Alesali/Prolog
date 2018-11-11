fak(1,1).
fak(X,Y):- X>1,N is X-1, fak(N,Z), Y is Z*X.
