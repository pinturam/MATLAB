%Write a function max_sum that takes v a row vector of numbers & n,a 
% positive integer as inputs.The function needs to find n consecutive 
% elements of v whose sum is largest possible.It returns summa & index 
% of first element of n consecutive integers.
 
function [summa, ind] = max_sum(v,n)
    % If n is greater than v return the specified values
    % Using return keyword exits the function so no further code is
    % evaluated
    if n > length(v)
        summa = 0;
        ind = -1;
        return;
    end
    
    % Initialize summa to -inf.
    % Then work through the vector, checking if each sum is larger than the
    % current value of summa
    
    summa = -inf;
    ind = -1;
    % Once we get to length(v)-n+1 we stop moving through the vector
    for ii = 1:length(v)-n+1
        currentV = v(ii:(ii+n-1));
        currentSumma = sum(currentV);
        % If currentSumma greater than summa, update summa and ind
        if currentSumma > summa
            summa = currentSumma;
            ind = ii;
        end
    end
end
%[summa, index] = max_sum([1 2 3 4 5 4 3 2 1],3)