// Agent bob in project t1

/* Initial beliefs and rules */
member(carol)

skill(java).
skill(python).
skill(document). 
skill(communicate). 
skill(design). 
skill(creativity). 

currentstatus(0).
/* Initial goals */
!start.


+!start : true <-  .print("I am Carol and I am ready to work"). 
/* Plans */

+askstatus : member(N) & currentstatus(C)<- .print("I've currently ", C, " tasks"); .send(X,tell,status(C)).
//initial
+task(T,S1,S2) : skill(S1) & skill(S2) & not assigned(T) <-  

  .send(manager, achieve, assign(T)); 

  +assigned(T). 

  

+assigned(T) : true <-  

  .print("I am assigned to ", T). 

  
+skill(java).
+skill(python).
+skill(document). 
+skill(communicate). 
+skill(design). 
+skill(creativity).

//This a variation showcasing the another way application with only 4 goals

+task(T,S1,S2) : skill(S1) & skill(S2) & (S1 == java | S1 == python | S1 == document | S1 == communicate | S1 == design | S1 == creativity) &(S2 == java | S2 == python | S2 == document | S2 == communicate | S2 == design | S2 == creativity) <- .send(manager, tell, assign(T)).


+assign(T) : true <-  .print("Carol is assigned to ", T). 

