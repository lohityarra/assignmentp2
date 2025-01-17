


/* Initial beliefs and rules */
member(alice).
member(bob).
member(dan).
member(carol).

skill(alice, java).
skill(alice, python). 
skill(alice, debug). 
skill(alice, test). 
skill(alice, design). 
skill(alice, creativity). 

skill(bob, cpp).
skill(bob, sql). 
skill(bob, document). 
skill(bob, communicate). 
skill(bob, optimize). 
skill(bob, security). 

skill(carol, java).
skill(carol, python).
skill(carol, document). 
skill(carol, communicate). 
skill(carol, design). 
skill(carol, creativity). 

skill(dan, cpp).
skill(dan, sql). 
skill(dan, debug). 
skill(dan, test). 
skill(dan, optimize). 
skill(dan, security). 

//initial rules
task(web_application, java, python); 
task(desktop_application, c++, sql); 
task(debug_web_application, debug, test); 
task(debug_desktop_application, debug, test); 
task(document_web_application, document, communicate); 
task(document_desktop_application, document, communicate); 
task(design_web_application, design, create); 
task(design_desktop_application, design, create); 
task(optimize_web_application, optimize, secure); 
task(optimize_desktop_application, optimize, secure);


// variation rules decreased
task(web_application) :- skill(X,java) & skill(X,python).
task(desktop_application) :- skill(cpp) & skill(sql).
task(debug_web_application) :- skill(java) & skill(python) & skill(debug).
task(debug_desktop_application) :- skill(cpp) & skill(sql) & skill(debug).
task(optimize_web_application) :- skill(java) & skill(python) & skill(optimize).




member(alice):- skill(X,java) & skill(X,python).
member(alice):- skill(X,java) & skill(X,python).
member(alice):- skill(X,java) & skill(X,python).
member(alice):- skill(X,java) & skill(X,python).



/* Initial goals */
tasks(web_application,java,python).
!start.
!status.
!assign_tasks.


// !tas.



/* Plans */

+!start : true <- .wait(1000); .print("I'm going to assign tasks.").

+!status[source(X)] : true <- .print("Alice are you free?"); .send(alice, tell, askstatus).
+!status[source(X)] : true <- .print("Bob are you free?"); .send(bob, tell, askstatus).
+!status[source(X)] : true <- .print("Carol are you free?"); .send(carol, tell, askstatus).
+!status[source(X)] : true <- .print("Dan are you free?"); .send(dan, tell, askstatus).

//this is brodcasting all the tasks
+!assign_tasks : true <- 

  +task(web_application, java, python); 

  +task(desktop_application, cpp, sql); 

  +task(debug_web_application, debug, test); 

  +task(debug_desktop_application, debug, test); 

  +task(document_web_application, document, communicate); 

  +task(document_desktop_application, document, communicate); 

  +task(design_web_application, design, create); 

  +task(design_desktop_application, design, create); 

  +task(optimize_web_application, optimize, secure); 

  +task(optimize_desktop_application, optimize, secure); 

  .broadcast(tell, task(_,_,_)). 

// !assign_tasks. 

  
//THIS IS a variation showcasing another way
+!assign_tasks : true <-  

  .send(alice, tell, task(one, java, debug)); 

  .send(dan, task(two, cpp, test));  

  .send(bob, task(three, cpp, docs)); 

  .send(carol, task(four, java, docs)). 



