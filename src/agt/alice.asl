// Agent alice in project t1

/* Initial beliefs and rules */
member(alice).

skill(java).
skill(python). 
skill(debug). 
skill(test). 
skill(design). 
skill(creativity). 



/* Initial goals */

!start.
// !task

/* Plans */

+!start : true <- .print("I'm ready to recieve a task!").
// +task(T,S1,S2) : skill(S1) & skill(S2) & not assigned(T) <- .send(manager, achieve, assign(T)); -+assigned(T). 


