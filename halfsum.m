%{
Write a function called halfsum that takes as input an at most 
two-dimensional matrix A and computes the sum of the elements of A 
that are in the diagonal or are to the right of it. example, the input is 
[1 2 3; 4 5 6; 7 8 9],the ans is 26
%}
function summa = halfsum(M)
[a b] = size(M);
if a>1
    
 for n = 1:a;
    for m = 1:b;
        if n>m;
            M(n,m) = 0;
            summa = sum(sum(M));
        end
    end
 end 
else 
    summa = sum(M);
end
        
end
%summa = halfsum([1 2 3; 4 5 6; 7 8 9])
