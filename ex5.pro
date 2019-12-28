/*****************************************************************************

		Copyright (c) Rashid Yangurazov Lens

 Project:  
 FileName: EX5.PRO
 Written by: Rashid Yangurazov
 Comments: 
******************************************************************************/

domains
  s=symbol /* object s has symbol-type */

predicates
  parent(s,s) - nondeterm(o,i), nondeterm(i,i), nondeterm(i,o)
  female(s) - nondeterm(i), nondeterm(o)
  male(s) - nondeterm(i), nondeterm(o)
  mother(s,s) - nondeterm(o,i), nondeterm(i,i), nondeterm(i,o)
  father(s,s) - nondeterm(o,i), nondeterm(i,i), nondeterm(i,o)
  ancestor(s,s)
  child(s,s) - nondeterm(o,i), nondeterm(i,i)
  
  /*  new relationships. begin*/
  oneblood(s,s) - nondeterm(i,i)
  sister(s,s) - nondeterm(i,i)
  brother(s,s) - nondeterm(i,i)
  grandmother(s,s) - nondeterm(i,i)
  grandfather(s,s) - nondeterm(i,i)
  /*  new relationships. end*/

clauses
  parent(pam,bob).	/* Pam is Bob's parent */
  parent(tom,bob).
  parent(tom,liz).
  parent(bob,ann).
  parent(bob,pat).
  parent(pat,jim).
  parent(sergei,sveta). 				/*new fact*/
  parent(oleg,sergei).  				/*new fact*/
  female(pam).		/* Pam is a woman*/
  female(liz).
  female(ann).
  female(pat).
  female(sveta). 					/*new fact*/
  male(tom).		/* Tom is a men*/
  male(bob).
  male(jim).
  male(oleg). 						/*new fact*/
  male(sergei). 					/*new fact*/
  oneblood(ann,pat). 					/*new fact*/
  oneblood(pat,ann). 					/*new fact*/


    
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
  
  /*  new propositions. begin*/	
  sister(X,Y):-
  	oneblood(X,Y) and oneblood(Y,X) and female(X).
  brother(Y,X):-
  	oneblood(Y,X) and oneblood(X,Y) and male(Y).
  	
  grandmother(X,Y):-
  	mother(X,Z), mother(Z,Y).
  grandmother(X,Y):-
  	mother(X,Z), father(Z,Y).
  	
  grandfather(X,Y):-
  	father(X,Z), father(Z,Y).
  grandfather(X,Y):-
  	father(X,Z), mother(Z,Y).
  
  /*  new propositions. end*/
  
goal
  /*sister(ann,pat). */
  /*brother(pat,ann). */
  grandfather(oleg, sveta).