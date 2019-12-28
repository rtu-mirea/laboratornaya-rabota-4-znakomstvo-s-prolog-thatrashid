/*****************************************************************************

		Copyright (c) Rashid Yangurazov Lens

 Project:  
 FileName: EX7.PRO
 Written by: Rashid Yangurazov
 Comments: 
******************************************************************************/

predicates
  solve(real,real,real) - procedure (i,i,i)
  reply(real,real,real) - procedure (i,i,i)
  mysqrt(real,real,real) - procedure (i,i,o)
  equal(real,real) - determ (i,i)

clauses
  solve(A,B,C):-
  D=B*B-4*A*C,
  reply(A, B, D), nl.
  reply(_,_,D):-
	D < 0,
	write("No solutions"),!.
  reply(A,B,D):-
	D=0,
	X=-B/(2*A),write("x=", X),!.
  reply(A,B,D):-
	mysqrt(D,D,SqrtD),
	X1=(-B+SqrtD)/(2*A),
	X2 = (-B - SqrtD)/(2*A),
	write("x1 = ", X1," and x2 = ", X2).

  mysqrt(X,Guess,Root):-
	NewGuess = Guess-(Guess*Guess-X)/2/Guess,
	not(equal(NewGuess,Guess)), !,
  mysqrt(X,NewGuess,Root).
  mysqrt(_,Guess,Guess).
  equal(X,Y):-
   	X/Y >0.99999,
   	X/Y < 1.00001.

goal
  write("A="), readreal(A),
  write("B="), readreal(B),
  write("C="), readreal(C),
  write(A, "x^2+", B, "x", "+", C, "\n\r"),
  solve(A,B,C).