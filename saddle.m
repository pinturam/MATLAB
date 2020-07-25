function indices=saddle(M)
indices=[];
[a b]=size(M);
q=1;
for i=1:a
    for j=1:b
        x=M(i,:);
        y=M(:,j);
        c=M(i,j)>=x;
        d=M(i,j)<=y;
        if ~ismember(0,c) && ~ismember(0,d)
            indices(q,1)=i;
            indices(q,2)=j;
            q=q+1;
        end
    end
end
end
%{
% create an interesting surface
[X,Y] = meshgrid(-15:0.5:10,-10:0.5:10);
Z = (X.^2-Y.^2)';
% find saddle points
indices = saddle(Z)
% plot surface
surf(Z);
hold on
% mark saddle points with red dots in the same figure
for ii = 1:size(indices,1)
    h = scatter3(indices(ii,2),indices(ii,1),Z(indices(ii,1),indices(ii,2)),'red','filled');
    h.SizeData = 120;
end
% adjust viewpoint
view(-115,14);
hold off
%}