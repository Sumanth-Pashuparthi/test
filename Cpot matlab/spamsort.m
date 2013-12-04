function [probabilities] = spamsort(mail_directory, destination_directory, dictionary_filename, priors, numDir)
%spamsort Summary of this function goes here
%   Detailed explanation goes here
%
%
%mail_directory :: is the path to the directory containing ASCII text files
%to be classified.
%
%spam_directory :: a character string for the directory of all spam files
%found in mail_directory.
%
%ham_directory :: a character string for the directory of all the ham files
%found in mail_directory.
%
%dictionary_filename :: is the name and path of the dictionary file.
%
%spam_prior_probability :: is a number value that specifies the base
%probability that any given document is spam.
%
%   AUTHOR:  Carson
%

%read in mail files, sanitizing for uniqueness as well.
[~, mailFileNames, mailWordsbyFile] = readInDirectory(mail_directory);
numFiles = length(mailFileNames);
N='';
sumProb = zeros(1, numDir);

for i=1:numDir
    N=[N, '%s '];
end

%read in dict
dictID = fopen(dictionary_filename);
dictionary = textscan(dictID, N, 'HeaderLines', '1');

%prior probabilities = [#, #, #, #, #, #, #, #]

%loop through each file
for i=1:numFiles
    
    
    %sanitize the file contents for uniqueness.
    listofWords = unique(mailWordsbyFile{i});
    probabilities = zeros(length(listofWords), numDir);
    %for each file, go through each word.
    for j=1:length(listofWords)
        %if that word is in the dictionary, add its probabilities to the
        %to the calculation.
        [inDict, index] = ismember(listofWords{j}, dictionary{1});
        if(inDict)
            for n = 1:numDir
                probabilities(index, n) = probabilities(index, n) + log10str2double(dictionary{1+n}{index});
            end
        end
        %hamSumProb = hamSumProb + log10(str2double(dictionary{3}{index}));
    end
    
    
    % if the calculated probability for the file is greater than the prior
    % probability, then move it to spam, otherwise move it to ham
    for q = 1:numDir
        probabilities(:,q) = probabilities(:,q) + log10(priors(q));
        sumProb(q) = mean(probabilities(:,q));
    end
    
    [~, ind] = max(sumProb);
    fpath = fullfile(mail_directory, mailFileNames{i});
    movefile(fpath, destination_directory{ind});
end

end

