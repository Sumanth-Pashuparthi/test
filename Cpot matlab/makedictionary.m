function makedictionary( spam_directory, ham_directory, dictionary_filename )
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

[allSpam, ~, spamWordsbyFile] = readInDirectory(spam_directory);
[allHam, ~, hamWordsbyFile] = readInDirectory(ham_directory);

dictionary{1} = [allSpam;allHam];
dictionary{1} = unique(dictionary{1});
dictLen = length(dictionary{1});
dictionary{2} = zeros(dictLen,1);
dictionary{3} = zeros(dictLen,1);

%go through the dictionary
for i=1:dictLen
   currentWord = dictionary{1}{i};
   
   %calculate spam probability
   for j=1:length(spamWordsbyFile)
      if ismember(currentWord, spamWordsbyFile{j})
         dictionary{2}(i) = dictionary{2}(i) + 1;
      end
   end

   
   %calculate ham probability
   for k=1:length(hamWordsbyFile)
      if ismember(currentWord, hamWordsbyFile{k})
         dictionary{3}(i) = dictionary{3}(i) + 1;
      end
   end
   
   
end


%open up the file for printing.
fid = fopen(dictionary_filename, 'w');

%Right now dictionary has the count of each file a word occurred in for
%spam (column 2) and ham (column 3). Here we divide each row by the total
%number of spam(2) and ham(3) files for that column, to get probability.
for m = 1:dictLen
    
    %add pseudo-count
    dictionary{2}(m) = (dictionary{2}(m)+1)/(dictLen+1);
    dictionary{3}(m) = (dictionary{3}(m)+1)/(dictLen+1);
    
    
    %print the file.
    fprintf(fid, '%s %f %f \n', dictionary{1}{m}, dictionary{2}(m), dictionary{3}(m));
end

fclose(fid);


end

