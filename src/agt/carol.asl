// Agent bob in project t1

/* Initial beliefs and rules */
member(carol)

skill(java).
skill(python).
skill(docs). 
skill(community). 
skill(design). 
skill(creativity). 

currentstatus(0).
/* Initial goals */
!start.


+!start : true <-  .print("I am Carol and I am ready to work"). 
/* Plans */

+askstatus : member(N) & currentstatus(C)<- .print("I've currently ", C, " tasks"); .send(X,tell,status(C)).

+task(T,S1,S2) : skill(S1) & skill(S2) & (S1 == java | S1 == python | S1 == debug | S1 == test | S1 == design | S1 == create) &(S1 == java | S1 == python | S1 == debug | S1 == test | S1 == design | S1 == create) <- .send(manager, tell, assign(T)).


+assign(T) : true <-  .print("Carol is assigned to ", T). 

-skill(S) : true <-  .print("I don't have skill ", S). 