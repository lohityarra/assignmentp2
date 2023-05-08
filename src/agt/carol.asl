// Agent bob in project t1

/* Initial beliefs and rules */
member(carol)

skill(java).
skill(python). 
skill(docs). 
skill(comm). 
skill(design). 
skill(creativity).
/* Initial goals */

!start.

/* Plans */

+!start : true <- .print("hello world.").
