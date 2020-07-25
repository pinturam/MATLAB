%{
Write a function called eligible that helps the admission officer of the 
Graduate School decide whether the applicant is eligible for admission 
based on GRE scores. The function takes two positive scalars called v and 
q as in
%}
function admit = eligible(v, q)
if (((v+q)/2)>= 92) && (v>88 & q>88)
    admit = true
else
    admit = false
end 
%{
call:
admit = eligible(96,89)
admit = eligible(88,99)
admit = eligible(92,91)
%}