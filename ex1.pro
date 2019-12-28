/*****************************************************************************

		Copyright (c) Rashid Yangurazov Lens

 Project:  
 FileName: EX1.PRO
 Written by: Rashid Yangurazov
 Comments: 
******************************************************************************/

domains
  s=symbol /* object s has symbol-type */

predicates
  parent(s,s) - nondeterm(o,i), nondeterm(i,i), nondeterm(i,o)
  female(s) - nondeterm(i), nondeterm(o)
  male(s) - nondeterm(i), nondeterm(o)
  mother(s,s) - nondeterm(o,i), nondeterm(i,i)
  father(s,s)
  ancestor(s,s)
  child(s,s) - nondeterm(o,i), nondeterm(i,i)

clauses
  parent(pam,bob).	/* Pam is Bob's parent */
  parent(tom,bob).
  parent(tom,liz).
  parent(bob,ann).
  parent(bob,pat).
  parent(pat,jim).
  female(pam).		/* Pam is a woman*/
  female(liz).
  female(ann).
  female(pat).
  male(tom).		/* Tom is a men*/
  male(bob).
  male(jim).
  child(Y,X):-		/* Y is a child of X, if X is a parent of Y */
  	parent(X,Y).	
  mother(X,Y):-		/* X is a mother of Y, if X is a parent of Y and X is a female */
  	parent(X,Y), female(X).
  father(X,Y):-		/* X is a father of Y, if X is a parent of Y and X is a male */
  	parent(X,Y), male(X).
  ancestor(X,Z):-	/* X is a ancestor of Z, if X is a parent of Z */
  	parent(X,Z).
  ancestor(X,Z):-	/* X is a ancestor of Z, if X is a parent of Y */
  	parent(X,Y), ancestor(Y,Z).
goal
  /* child(sergei,ann). */
  /* female(pat). */
  /* ancestor(pat,jim). */
  /* male(X), write("male = ", X), nl. */
  /* mother(X,bob), write(X, " is a mother of bob"), nl. */
  child(Y, bob), write(Y, " is a child of bob"), nl.
  
