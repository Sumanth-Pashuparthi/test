function rename(spam_directory)
%Rename renames the spam and ham files accordingly, so that we can actually
%follow where they go, via file name.

spamList = dir(spam_directory);
%hamList = dir(ham_directory);

spamLength = length(spamList);
%hamLength = length(hamList);

for i = 1:spamLength
    if(~spamList(i).isdir && ~strcmpi(spamList(i).name, 'cmds') && ~strcmpi(spamList(1),'.'))
    source = fullfile(spam_directory,spamList(i).name);
    newname = fullfile(spam_directory,strcat('disco_',num2str(i)));
    movefile(source, newname);   
    end
end

%{
for k = 1:hamLength
    if(~hamList(k).isdir && ~strcmpi(hamList(k).name, 'cmds') && ~strcmpi(hamList(1),'.'))
    source = fullfile(ham_directory,hamList(k).name);
    newname = fullfile(ham_directory,strcat('hiphop_',num2str(k)));
    movefile(source, newname);
    end
end
%}
