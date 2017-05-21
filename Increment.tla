----------------------------- MODULE Increment -----------------------------
EXTENDS Integers
VARIABLE i,pc

Init == (pc="start") /\ (i=0)

Pick == \/ /\ pc = "start"
           /\ i' \in 0..1000
           /\ pc' = "middle"
AddOne ==  \/  /\ pc = "middle"
               /\ i' = i +1
               /\ pc' = "done" 
Next == AddOne \/ Pick
               
=============================================================================
\* Modification History
\* Last modified Sat May 20 22:49:59 CDT 2017 by Kkomv
\* Created Sat May 20 22:19:20 CDT 2017 by Kkomv
