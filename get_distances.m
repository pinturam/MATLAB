function distance=get_distance(a,b)
a= convertCharsToStrings(a);
b= convertCharsToStrings(b);
[bar,~,raj]=xlsread('Distances.xlsx');
ii=2;
for k=1:length(raj)-1
    raj{1,ii}= convertCharsToStrings(raj{1,ii});
    raj{ii,1}= convertCharsToStrings(raj{ii,1});
    ii=ii+1;
end
ii=2;
jj=2;
for m=2:length(raj)
    if raj{1,ii}==a
        break;
    end    
    ii=ii+1;
end
for n=2:length(raj)
    if raj{jj,1}==b
        break;
    end    
    jj=jj+1;
end
if ii>length(raj)||jj>length(raj)
    distance=-1;
else
distance=bar(jj-1,ii-1);
end
%distance = get_distance('Seattle, WA','Miami, FL')    
    