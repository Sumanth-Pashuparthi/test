function spamsort(mail_directory, spam_directory, ham_directory, dictionary_filename, spam_prior_probability)
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

%read in dict
dictID = fopen(dictionary_filename);
dictionary = textscan(dictID, '%s %s %s');

%get prior probabilities
spamPrior = spam_prior_probability;
hamPrior = 1-spamPrior;

%loop through each file
for i=1:numFiles
    
    %initialize your probability sums for this file.
    spamSumProb = 0;
    hamSumProb = 0;
    hamProb=0;
    spamProb=0;
    
    %sanitize the file contents for uniqueness.
    listofWords = unique(mailWordsbyFile{i});
    
    %for each file, go through each word.
    for j=1:length(listofWords)
        %if that word is in the dictionary, add its probabilities to the
        %to the calculation.
        [inDict, index] = ismember(listofWords{j}, dictionary{1});
        if(inDict)
            spamSumProb = spamSumProb + log10(str2double(dictionary{2}{index}));
            hamSumProb = hamSumProb + log10(str2double(dictionary{3}{index}));
        end
    end
    
    %if the calculated probability for the file is greater than the prior
    %probability, then move it to spam, otherwise move it to ham
    hamProb = log10(hamPrior) + hamSumProb;
    spamProb = log10(spamPrior) + spamSumProb;
    fpath = fullfile(mail_directory, mailFileNames{i});
    if(hamProb < spamProb)
        movefile(fpath, spam_directory);
    else
        movefile(fpath, ham_directory);
    end
    
end


end