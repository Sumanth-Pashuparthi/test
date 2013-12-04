function aggregateData( bluesDirectory, countryDirectory, discoDirectory, hiphopDirectory, metalDirectory, popDirectory, reggaeDirectory, rockDirectory)
%aggregate Data takes a string specifying a path to a directory of songs.
%
%This function will only work when you are inside Marsyas's bin directory,
%and if marsyas is established on your system. 

%Instantiate the matrix to hold the tempo values for each file.
tempo = zeros(8,100);

%%%%%Description%%%%%
%This function takes in the directory path for each genre's directory.
%for each directory, the file goes through the directory and performs a
%Marsyas command line call on each audio file. It takes the command line
%output from this call, and parses it to obtain the tempo. It does this for
%each genre, specified by genre below.


%BLUES
bluesFileList = dir(bluesDirectory);
fileCount = length(bluesFileList);
count =1;
for i = 1:fileCount
   if(~bluesFileList(i).isdir && ~strcmpi(bluesFileList(i).name, 'cmds') && ~strcmpi(bluesFileList(1),'.')) 
       cmd = strcat('./tempo ', fullfile(bluesDirectory, bluesFileList(i).name));
       [~, cmdout] = system(cmd);
       tempo(1, count) = str2double(cmdout(length(cmdout)-2:length(cmdout-1)));
       count=count+1;
   end
end

%COUNTRY
countryFileList = dir(countryDirectory);
fileCount = length(countryFileList);
count =1;
for i = 1:fileCount
   if(~countryFileList(i).isdir && ~strcmpi(countryFileList(i).name, 'cmds') && ~strcmpi(countryFileList(1),'.')) 
       cmd = strcat('./tempo ', fullfile(countryDirectory, countryFileList(i).name));
       [~, cmdout] = system(cmd);
       tempo(2, count) = str2double(cmdout(length(cmdout)-2:length(cmdout-1)));
       count=count+1;
   end
end

%Disco
discoFileList = dir(discoDirectory);
fileCount = length(discoFileList);
count =1;
for i = 1:fileCount
   if(~discoFileList(i).isdir && ~strcmpi(discoFileList(i).name, 'cmds') && ~strcmpi(discoFileList(1),'.')) 
       cmd = strcat('./tempo ', fullfile(discoDirectory, discoFileList(i).name));
       [~, cmdout] = system(cmd);
       tempo(3, count) = str2double(cmdout(length(cmdout)-2:length(cmdout-1)));
       count=count+1;
   end
end

%HipHop
hiphopFileList = dir(hiphopDirectory);
fileCount = length(hiphopFileList);
count =1;
for i = 1:fileCount
   if(~hiphopFileList(i).isdir && ~strcmpi(hiphopFileList(i).name, 'cmds') && ~strcmpi(hiphopFileList(1),'.')) 
       cmd = strcat('./tempo ', fullfile(hiphopDirectory, hiphopFileList(i).name));
       [~, cmdout] = system(cmd);
       tempo(4, count) = str2double(cmdout(length(cmdout)-2:length(cmdout-1)));
       count=count+1;
   end
end

%Metal
metalFileList = dir(metalDirectory);
fileCount = length(metalFileList);
count =1;
for i = 1:fileCount
   if(~metalFileList(i).isdir && ~strcmpi(metalFileList(i).name, 'cmds') && ~strcmpi(metalFileList(1),'.')) 
       cmd = strcat('./tempo ', fullfile(metalDirectory, metalFileList(i).name));
       [~, cmdout] = system(cmd);
       tempo(5, count) = str2double(cmdout(length(cmdout)-2:length(cmdout-1)));
       count=count+1;
   end
end

%Pop
popFileList = dir(popDirectory);
fileCount = length(popFileList);
count =1;
for i = 1:fileCount
   if(~popFileList(i).isdir && ~strcmpi(popFileList(i).name, 'cmds') && ~strcmpi(popFileList(1),'.')) 
       cmd = strcat('./tempo ', fullfile(popDirectory, popFileList(i).name));
       [~, cmdout] = system(cmd);
       tempo(6, count) = str2double(cmdout(length(cmdout)-2:length(cmdout-1)));
       count=count+1;
   end
end

%Reggae
reggaeFileList = dir(reggaeDirectory);
fileCount = length(reggaeFileList);
count =1;
for i = 1:fileCount
   if(~reggaeFileList(i).isdir && ~strcmpi(reggaeFileList(i).name, 'cmds') && ~strcmpi(reggaeFileList(1),'.')) 
       cmd = strcat('./tempo ', fullfile(reggaeDirectory, reggaeFileList(i).name));
       [~, cmdout] = system(cmd);
       tempo(7, count) = str2double(cmdout(length(cmdout)-2:length(cmdout-1)));
       count=count+1;
   end
end

%Rock
rockFileList = dir(rockDirectory);
fileCount = length(rockFileList);
count =1;
for i = 1:fileCount
   if(~rockFileList(i).isdir && ~strcmpi(rockFileList(i).name, 'cmds') && ~strcmpi(rockFileList(1),'.')) 
       cmd = strcat('./tempo ', fullfile(rockDirectory, rockFileList(i).name));
       [~, cmdout] = system(cmd);
       tempo(8, count) = str2double(cmdout(length(cmdout)-2:length(cmdout-1)));
       count=count+1;
   end
end

%here we write the tempo to a text file, for later conversion and use in
%WEKA.
fid = fopen('tempoData.txt', '%w');
for i=1:100
    fprintf(fid, '%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f \n', tempo(i, 1), tempo(i, 2), tempo(i, 3), tempo(i, 4), tempo(i, 5), tempo(i, 6), tempo(i, 7), tempo(i, 8));
end
fclose(fid);
end

