function makedictionary( directory, dictionary_filename )
%makedictionary: This function will take in 2 directories of ASCII text
%files.
%
%
%spam_directory is a char string containing the path to a directory
%containing only spam files. Each file is ASCII.
%
%ham_directory is the same as spam_directory, except that the directory
%contains only ham files.
%
%dictionary_filename is the desired name of the dictionary. makedictionary
%will save the resulting dictionary created from the directories into a
%file by this name. It will save this file in the current directory.
%
%
%
%   AUTHOR:  Carson
%
totalWords = '';
LEN = length(directory);
for i = 1:LEN
    %For this path 'directory'
    fileDir{i, 1} = directory{i};
    %Read it in by it's name.
    [fileDir{i, 2}, ~, fileDir{i, 3}] = readInDirectory(fileDir{i, 1});
    %Store all words by concatenating
    totalWords = [totalWords,fileDir{i,2}];
end
totalWords = unique(totalWords);

%These are all the words
fileDir{1,4}{1} = totalWords;
dictLen = length(fileDir{1,4}{1});


%For all the words
for i=1:LEN
    %make a vector to store probabilities
    fileDir{1, 4}{i+1} = ones(dictLen,1);
    
    
    %all=(i, 2), by WordsbyFile=(i, 3)
    %[allSpam, ~, spamWordsbyFile] = readInDirectory(spam_directory);
    %[allHam, ~, hamWordsbyFile] = readInDirectory(ham_directory);
    
    
    
    
    %go through the dictionary
    for m=1:dictLen
        currentWord = fileDir{1,4}{1}{m};
        
        
        
        for j=1:length(fileDir{i, 3})
            if ismember(currentWord, fileDir{i, 3}{j})
                fileDir{1, 4}{i+1}(m) = fileDir{1,4}{i+1}(m) + 1;
            end
        end
        
        %calculate ham probability
        % for k=1:length(hamWordsbyFile)
        %    if ismember(currentWord, hamWordsbyFile{k})
        %       dictionary{3}(i) = dictionary{3}(i) + 1;
        %    end
        % end
        
        
    end
    
end

for i = 1:LEN-1
    %Right now dictionary has the count of each file a word occurred in for
    %spam (column 2) and ham (column 3). Here we divide each row by the total
    %number of spam(2) and ham(3) files for that column, to get probability.
    Table = [Table,fileDir{1,4}{i}, '\t']
    for k = 1:dictLen
        
        %Add Pseudo-count
        fileDir{1, 4}{i+1}(k) = fileDir{1,4}{i+1}(k)/(dictLen+1);
        
        
        
        Table = [Table:fileDir{1,4}{i+1}(m), '\t'];
        %print the file.
    end
    Table = [Table,'\n'];
    
end

%open up the file for printing.
fid = fopen(dictionary_filename, 'w');
    fprintf(fid, Table);
fclose(fid);



end

