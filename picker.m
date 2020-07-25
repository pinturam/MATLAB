%{
Write a function called picker that takes three input arguments called 
condition, in1 and in2 in this order. The argument condition is a logical. 
If it is true, the function assigns the value of in1 to the output argument
out,  otherwise, it assigns the value of in2 to out.
%}
function out = picker(condition,int1,int2)
y=logical(condition)        
if  y==1
    out = int1;
else
    out = int2;
end
  end
%call
%out = picker(true,1,2)
%out = picker(false,1,2)