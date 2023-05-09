
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

+task(T,S1,S2) : skill(S1) & skill(S2) & (S1 == java | S1 == python | S1 == debug | S1 == test | S1 == design | S1 == create) &(S1 == java | S1 == python | S1 == debug | S1 == test | S1 == design | S1 == create) <- .send(manager, tell, assign(T)).


+assign(T) : true <-  .print("Dan is assigned to ", T). 

-skill(S) : true <-  .print("I don't have skill ", S). 