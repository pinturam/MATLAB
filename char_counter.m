function charnum=char_counter(fname,character)
charnum=0;
fid=fopen(fname,"rt");%opens file
if fid<0 || ~ischar(character) %check if file not found or character is not a char
    charnum=-1;
    return
end
oneline=fgets(fid);
while ischar(oneline)
    for x=1:length(oneline)
        %compare whether 'character' and words from line are same
        if strcmp(oneline(x),character)==true 
            charnum=charnum+1;
        end
    end
    oneline=fgets(fid);
end
%{
type('simple.txt')
charnum = char_counter('simple.txt','a')
charnum = char_counter('Frankenstein-by-Shelley.txt','?')
%}