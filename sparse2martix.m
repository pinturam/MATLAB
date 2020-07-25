%simple version
function matrix = sparse2matrix(cellvec)
matrix = cellvec{2}*ones(cellvec{1});
for m=3:size(cellvec,2)
matrix(cellvec{m}(1),cellvec{m}(2))=cellvec{m}(3);
end
%matrix = sparse2matrix({[2 3], 0, [1 2 3], [2 2 -3]})