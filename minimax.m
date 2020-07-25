%{

Write a function called minimax that takes M, a matrix input argument and 
returns mmr, a row vector containing the absolute values of the difference 
between the maximum and minimum valued elements in each row. As a second 
output argument called mmm,
%}
function [a,b]=minimax(M)
row_max=max(M');
overall_max=max(row_max);
row_min=min(M');
overall_min=min(row_min);
a=row_max - row_min;
b=overall_max-overall_min;
%call
%[mmr, mmm] = minimax([1:4;5:8;9:12])