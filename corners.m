%{
Write a function called corners that takes a matrix as an input argument 
and returns four outputs: the elements at its four corners in this order: 
top_left, top_right, bottom_left and bottom_right.
%}
function [a,b,c,d]=corners(x)
a=x(1,1);%topleft
b=x(1,end);%topright
c=x(end,1);%bottomleft
d=x(end,end);%bottomright
end 
%{
Code to call your function:::::::::::::::;;
A = randi(100,4,5)
[top_left, top_right, bottom_left, bottom_right] = corners(A)
B = [1; 2]
[top_left, top_right, bottom_left, bottom_right] = corners(B)
%}