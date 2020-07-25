%{
1. Create a row vector of 1's that has same number of elements as A has rows.
2. Create a column vector of 1's that has same number of elements as A has columns.
3. Using matrix multiplication, assign the product of the row vector, the matrix A, and the column vector (in this order) to the variable "result".
Given a Matrix A = [1:5; 6:10; 11:15; 16:20],
%}
A = [1:5; 6:10; 11:15; 16:20];
Row=[1 1 1 1];
Column=[1;1;1;1;1];
result=Row*A*Column;