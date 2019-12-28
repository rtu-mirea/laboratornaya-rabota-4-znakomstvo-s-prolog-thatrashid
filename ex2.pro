/*****************************************************************************

		Copyright (c) Rashid Yangurazov Lens

 Project:  
 FileName: EX2.PRO
 Written by: Rashid Yangurazov
 Comments: 
******************************************************************************/

predicates
  likes(symbol,symbol) - nondeterm(i, i), nondeterm(o, i), nondeterm(i, o)

clauses
  likes(ellen, tennis).
  likes(john, football).
  likes(tom, baseball).
  likes(eric, swimming).
  likes(mark, tennis).
goal
  /*likes(X, tennis), write(X, " likes tennis"), nl.*/
  /*likes(eric, Y), write("Eric likes ", Y), nl.*/
  /*likes(john, Y), write("John likes ", Y), nl.*/
  /*likes(tom, Y), write("Eric likes ", Y), nl.*/
  likes(X, football), write(X, " likes footbal"), nl.
