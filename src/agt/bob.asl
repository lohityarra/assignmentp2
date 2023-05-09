// Agent bob in project t1

/* Initial beliefs and rules */
member(bob)

skill(cpp).
skill(sql). 
skill(docs). 
skill(community). 
skill(optimize). 
skill(security). 

currentstatus(0).
/* Initial goals */

!start.

/* Plans */


// Agent bob in project greeting.mas2j

+!start : true <-  .print("I am Bob and I am ready to work"). 
/* Plans */

+askstatus : member(N) & currentstatus(C)<- .print("I've currently ", C, " tasks"); .send(X,tell,status(C)).

+task(T,S1,S2) : skill(S1) & skill(S2) & (S1 == java | S1 == python | S1 == debug | S1 == test | S1 == design | S1 == create) &(S1 == java | S1 == python | S1 == debug | S1 == test | S1 == design | S1 == create) <- .send(manager, tell, assign(T)).


+assign(T) : true <-  .print("Bob is assigned to ", T). 

-skill(S) : true <-  .print("I don't have skill ", S). 