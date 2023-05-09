
skill(cpp).
skill(sql). 
skill(debug). 
skill(test). 
skill(optimize). 
skill(security). 
currentstatus(0).

!start.


+!start : true <-  .print("I am Dan and I am ready to work"). 
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
+skill(debug). 
+skill(test). 
+skill(optimize). 
+skill(security). 

//This a variation showcasing the another way application with only 4 goals

+task(T,S1,S2) : skill(S1) & skill(S2) & (S1 == cpp | S1 == sql | S1 == debug | S1 == test | S1 == optimize | S1 == security) &(S2 == cpp | S2 == sql | S2 == debug | S2 == test | S2 == optimize | S2 == security) <- .send(manager, tell, assign(T)).


+assign(T) : true <-  .print("Dan is assigned to ", T). 

