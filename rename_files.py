import sys
import urllib
import os
import string

# args: <root_folder> <name_file>

DEBUG = True

if DEBUG == True:
    rootDir = "/Users/MoritzGellner/Downloads/genres"
    nameFile = "/Users/MoritzGellner/Downloads/namefile.txt"

else:
    rootDir = sys.argv[1]
    nameFile = sys.argv[2]

## read name file
f = open(nameFile,'r')
lines = f.readlines()
f.close()

oldToNewNames = {}

for l in lines:
    if l[0] != '#' and len(l) > 2:
        chunks = string.split(l,' ::: ')
        while len(chunks) < 3:
            chunks.append('undef')
        oldname = os.path.splitext(chunks[0])[0] + ".au"
        newname = urllib.quote(chunks[1]) + "." + urllib.quote(chunks[2])
        #print oldname
        #print newname
        #print "=========="
        oldToNewNames[oldname] = newname

for entry in os.listdir(rootDir):
    fullpath = rootDir + "/" + entry
    if os.path.isdir(fullpath):
        for fname in os.listdir(fullpath):
            print oldToNewNames[fname]
            #print fullpath + "/" + fname
            ## rename to <artist>.<song> (urlsafe'd)
            try:
                os.rename(fullpath + "/" + fname, fullpath + "/" + oldToNewNames[fname])
            except OSError:
                continue
