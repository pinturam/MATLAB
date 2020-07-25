function [a, s]=myRand2(low,high)
a=low+rand(3,4)*(high-low);
s=sumAllElements(a);

function summa=sumAllElements(M)
    global v;
    v=M(:);
    summa=sum(v);
    
%on commmand window
%[x ss]=myRand2(2,3)
%v
