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

// Initial rules
task(X,web_application) :- skill(X,java) & skill(X,python).
task(X,desktop_application) :- skill(X,c) & skill(X,sql).
task(X,debug_web_application) :- skill(X,java) & skill(X,python) & skill(debug).
task(X,debug_desktop_application) :- skill(X,c) & skill(X,sql) & skill(debug).
// task(X,optimize_web_application) :- skill(X,java) & skill(X,python).
// task(X,optimize_desktop_application) :- skill(X,java) & skill(X,python).
// task(X,document_desktop_application) :- skill(X,java) & skill(X,python).
// task(X,document_web_application) :- skill(X,java) & skill(X,python).
// task(X,design_web_application) :- skill(X,java) & skill(X,python).
// task(X,design_desktop_application) :- skill(X,java) & skill(X,python).
/* Initial goals */
!start.
!negh.


/* Plans */

+!start : true <- .print("I'm ready to recieve a task!").

/* Plans */
+!negh : true <- .wait(1000); .print("meeehaw").






