%{
Write a function called taxi fare that computes the fare of taxi ride. It takes two inputs : the distance in kilometers (d) and the amount of wait time in minutes (t). The fare is calculated like this
(the first km is $5)
(every additional km is $2)
and every minuteof waiting is $0.25.
Once a km is started.It counts as a whole( Hint: consider the ceil built in function). The same rule applies wait to times. You can assume that d>0 and t>= 0 but they are not necessarily integers. The function returns the fare in dollars. For example ,a 3.5-km ride with2.25 minutes of wait costs $11.75. Note that loops and if statement are neither necessary nor allowed.
%}
function fare = taxi_fair(d,t)
d = ceil(d);
t = ceil(t);
fare=5+(2*(d-1))+(t*0.25);
%Code to call your function
%fare = taxi_fare(3.5,2.25)