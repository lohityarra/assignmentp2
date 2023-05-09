// Agent bob in project t1

/* Initial beliefs and rules */
member(bob)

skill(cpp).
skill(sql). 
skill(document). 
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
//initial
+task(T,S1,S2) : skill(S1) & skill(S2) & not assigned(T) <-  

  .send(manager, achieve, assign(T)); 

  +assigned(T). 

  

+assigned(T) : true <-  

  .print("I am assigned to ", T). 

  
+skill(cpp).
+skill(sql). 
+skill(document). 
+skill(communicate). 
+skill(optimize). 
+skill(security). 

//This a variation showcasing the another way application

+task(T,S1,S2) : skill(S1) & skill(S2) & (S1 == c++ | S1 == sql | S1 == document | S1 == communicate | S1 == design | S1 == create) & (S2 == c++ | S2 == sql | S2 == document | S2 == communicate | S2 == design | S2 == create) <- .send(manager, tell, assign(T)).


+assign(T) : true <-  .print("Bob is assigned to ", T). 
