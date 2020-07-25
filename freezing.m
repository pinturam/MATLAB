function numfreeze = freezing(A)
numfreeze = length(A(A<32));
end
%numfreeze = freezing([45 21 32 31 51 12])