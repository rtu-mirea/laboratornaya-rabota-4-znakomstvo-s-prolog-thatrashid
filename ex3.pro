/*****************************************************************************

		Copyright (c) Rashid Yangurazov Lens

 Project:  
 FileName: EX3.PRO
 Written by: Rashid Yangurazov
 Comments: 
******************************************************************************/

predicates
  can_buy(symbol, symbol) - nondeterm(i,o), nondeterm(o,o)/* "can_buy" relationship */
  person(symbol) - nondeterm(i), nondeterm(o) /* "person" relationship */ 
  car(symbol) - nondeterm(i), nondeterm(o) /* "car" relationship */
  likes(symbol, symbol) - nondeterm(i, i), nondeterm(i, o)/* "likes" relationship */
  for_sale(symbol) - nondeterm(i), nondeterm(o) /* "for_sale" relationship */

clauses
  can_buy(X, Y):-
    person(X),
    car(Y),
    likes(X,Y),
    for_sale(Y).
  person(kelly).
  person(judy).
  car(lemon).
  car(hot_rod).
  likes(kelly, hot_rod).
  likes(judy, pizza).
  for_sale(pizza).
  for_sale(lemon).
  for_sale(hot_rod).
goal
  /*can_buy(Who, What).*/
  /*for_sale(X), write("For sale: ", X), nl.*/
  /*person(Name), write("Person: ", Name), nl.*/
  /*likes(kelly, Y), write("Kelly likes car brand that named", Y), nl.*/
  likes(judy, Y), write("Judy likes ", Y), nl.
