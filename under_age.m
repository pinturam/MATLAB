%{
Write a function called under_age that takes two positive integer scalar 
arguments: age that represents someone's age, and limit that represents an 
age limit. The function returns true if the person is younger than the age 
limit. If the second arg
%}
function x = under_age(age,limit)
if nargin < 2
    limit = 21;
    if age < limit
        x = true;
    else
        x = false;
    end
end
if nargin == 2
    if age < limit
        x = true;
    else
        x = false;
    end
end
%{
too_young = under_age(18,18)
too_young = under_age(20)
%}