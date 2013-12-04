function [ allWords, listNames, listWords ] = readInDirectory(directory)
%This helper function receives a directory as input, and returns from it a
%unique, sanitized list of words. 


myFiles = dir(directory);

fileLen = length(myFiles);

ignoreCount = 0;
fileIgnore = zeros(1,5);
fileWords = cell(1, fileLen);
allWords = cell(0);


for i=1:fileLen
    %if not a directory, or other improper file.
    if(~myFiles(i).isdir && ~strcmpi(myFiles(i).name,'cmds') && ~strcmpi(myFiles(i).name(1),'.'))
        %find the header and chop it off.
        fpath = fullfile(directory,myFiles(i).name);
        ID2 = fopen(fpath);
        lines = textscan(ID2,'%s','Delimiter','\n');
        fclose(ID2);
        [~, chop] = ismember('', lines{1});
        
        %open from below header
        ID = fopen(fpath);
        %Delimit by non-alphanums for now.
        mailWords = textscan(ID, '%s', 'Delimiter', ' .,?!!@#$%^&*()_+=-[]{}"''<>/', 'MultipleDelimsAsOne',1,'HeaderLines', chop);
        %mailWords = textscan(ID, '%s', 'HeaderLines', chop);
        fclose(ID);
        %extract and lowercase the words of the file
        mailWords = mailWords{1};
        mailWords = lower(mailWords);
        %Add those files words to it's spot in our cell array for files.
        fileWords{i} = mailWords;
        
        %Append those words onto our list of all words.
        allWords=[allWords;mailWords];
        
    else
        %track the file that you are ignoring in order to better construct
        %final cell arrays.
        ignoreCount = ignoreCount+1;
        fileIgnore(ignoreCount) = i;
    end
    
end

%Remove ignored files from your cell arrays of files and names
k=1;
listNames = cell(1, fileLen - ignoreCount);
listWords = cell(1, fileLen - ignoreCount);
for j = 1:fileLen
   if ~ismember(j,fileIgnore)
       listWords{k} = fileWords{j};
       listNames{k} = myFiles(j).name;
       k=k+1;
   end
end

%Finalize wordlist by alphabetizing, uniqueizing, sanitizing, lowerizing,
%and all other additional izings.
allWords = lower(allWords);
allWords = unique(allWords);

 %{
Sanitation -- from older work.         
            %Sanitize input to lowercase.
            cleanWord = lower(mailWords{1}{i});
            
            %Add 1 to our HTML count and strip to content if the word is/has
            %HTML.
            if(~isempty(regexpi(cleanWord, '<.*?>')))
                htmlCounter = htmlCounter+1;
                cleanWord = regexprep(cleanWord, '<.*?>','');
            end
            
            clen = length(cleanWord);
            %remove plurals and standard demarcations
            if(clen>=2)
                if(strcmpi(cleanWord((clen-1):clen), 's.') || strcmpi(cleanWord((clen-1):clen), '''s') || strcmpi(cleanWord((clen-1):clen), 's!'))
                cleanWord=cleanWord(1:clen-2);
                elseif(clen>1 && (strcmpi(cleanWord(clen), 's') || strcmpi(cleanWord(clen), '.') || strcmpi(cleanWord(clen), '?') || strcmpi(cleanWord(clen), '!') || strcmpi(cleanWord(clen), ':') || strcmpi(cleanWord(clen), ',')))
                cleanWord=cleanWord(1:clen-1);
                end
            end
            
            %If it has specific nonalphaNums
            if(length(regexpi(cleanWord, '[\/@%^+=*~!<>]')) > 1)%marcated/trash. A spam-style mispelled word. Regex for nonalphanums.
                %iterated spamword counter.
                markupCounter = markupCounter+1;
            end
%}


end

