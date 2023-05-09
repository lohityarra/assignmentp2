// Agent alice in project t1

/* Initial beliefs and rules */
member(alice).

skill(java).
skill(python). 
skill(debug). 
skill(test). 
skill(design). 
skill(creativity). 

currentstatus(0).



/* Initial goals */

!start.


+!start : true <-  .print("I am Alice and I am ready to work"). 
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
+skill(debug). 
+skill(test).
+skill(design). 
+skill(creativity). 

// Variation 1: Change the initial belief base of alice to include SQL as a skill 

// This will allow alice to be assigned to the desktop application task 

//+skill(sql). // added this line 

//This another variation showcasing the another way application
+task(T,S1,S2) : skill(S1) & skill(S2) & (S1 == java | S1 == python | S1 == debug | S1 == test | S1 == design | S1 == create) &(S2 == java | S2 == python | S2 == debug | S2 == test | S2 == design | S2 == create) <- .send(manager, tell, assign(T)).


+assign(T) : true <-  

  .print("Alice is assigned to ", T). 
  
 

