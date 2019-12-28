/*****************************************************************************

		Copyright (c) Rashid Yangurazov Lens

 Project:  
 FileName: EX4.PRO
 Written by: Rashid Yangurazov
 Comments: 
******************************************************************************/

predicates
  car(symbol, real, integer, symbol, integer) - nondeterm(o, o, o, i, o), nondeterm(i, o, o, o, o), nondeterm(o, o, o, o, o)
  truck(symbol, real, integer, symbol, integer) - nondeterm(o, o, o, i, o), nondeterm(i, o, o, o, o)

clauses
  car(chrysler, 13000, 3, red, 12000).
  car(ford, 90000, 4, gray, 25000).
  car(datsun, 8000, 1, red, 30000).
  truck(ford, 80000, 6, blue, 8000).
  truck(datsun, 50000, 5, orange, 20000).
  
goal
  car(A, B, C, red, E), write("Red car: ", A), nl.
  /* truck(A, B, C, orange, E), write("Orange truck: ", A), nl. */
  /* truck(ford, B, C, D, E), write("Characteristics of Ford truck: ", B, ", ",  C, ", ", D, ", ", E), nl, fail. */
  /* car(datsun, B, C, D, E), write("Characteristics of Datsun car: ", B, ", ",  C, ", ", D, ", ", E), nl, fail. */
  /* car(A, B, C, D, E), write(A, ", ", B, ", ",  C, ", ", D, ", ", E), nl, fail. */
