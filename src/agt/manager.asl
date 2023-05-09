


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
skill(bob, docs). 
skill(bob, community). 
skill(bob, optimize). 
skill(bob, security). 

skill(carol, java).
skill(carol, python).
skill(carol, docs). 
skill(carol, community). 
skill(carol, design). 
skill(carol, creativity). 

skill(dan, cpp).
skill(dan, sql). 
skill(dan, debug). 
skill(dan, test). 
skill(dan, optimize). 
skill(dan, security). 

// Initial rules
task(web_application) :- skill(X,java) & skill(X,python).
task(desktop_application) :- skill(cpp) & skill(sql).
task(debug_web_application) :- skill(java) & skill(python) & skill(debug).
task(debug_desktop_application) :- skill(cpp) & skill(sql) & skill(debug).
task(optimize_web_application) :- skill(java) & skill(python) & skill(optimize).
// task(X,optimize_desktop_application) :- skill(X,java) & skill(X,python).
// task(X,document_desktop_application) :- skill(X,java) & skill(X,python).
// task(X,document_web_application) :- skill(X,java) & skill(X,python).
// task(X,design_web_application) :- skill(X,java) & skill(X,python).
// task(X,design_desktop_application) :- skill(X,java) & skill(X,python).




member(alice):- skill(X,java) & skill(X,python).



/* Initial goals */
tasks(web_application,java,python).
// !start.
// !status.
!assign_tasks.


// !tas.



/* Plans */

+!start : true <- .wait(1000); .print("I'm going to assign tasks.").

+!status[source(X)] : true <- .print("Alice are you free?"); .send(alice, tell, askstatus).




// !assign_tasks. 

  

+!assign_tasks : true <-  

  .send(alice, tell, task(one, java, debug)); 

  .send(dan, task(two, cpp, test));  

  .send(bob, task(three, cpp, docs)); 

  .send(carol, task(four, java, docs)). 



