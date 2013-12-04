import sys
import urllib2
import urllib
import xml.etree.ElementTree as ET
import time
import os
import string

DEBUG = True

def getXmlData(queryStr):
    time.sleep(10)
    print "trying to get lyrics..."
    try:
        apiResponse = urllib2.urlopen(queryStr)
        xmlString = apiResponse.read()
        apiResponse.close()
        print "success!"
        return xmlString
    except urllib2.URLError:
        print "failure! trying again..."
        return getXmlData(queryStr)

def getLyricText(lid,checksum):
    queryStr = "http://" + urllib.quote("api.chartlyrics.com/apiv1.asmx/GetLyric?lyricId=" + lid + "&lyricCheckSum="+checksum,'?/&=')
    print queryStr
    xmlString = getXmlData(queryStr)
    xmlObj = ET.fromstring(xmlString)

    for child in xmlObj:
        if child.tag == "{http://api.chartlyrics.com/}Lyric":
            lyricText = child.text
            return lyricText
    return SystemError

def buildSongList(rootDir,outDir):
    songlist = []
    for entry in os.listdir(rootDir):
        fullpath = rootDir + "/" + entry
        if os.path.isdir(fullpath):
            try:
                os.mkdir(outDir + "/" + entry)
            except OSError:
                ## assume this is error 17 (dir already exists)
                print "Err 17 caught"
                pass
            for fname in os.listdir(fullpath):
                if fname[0] != '.':
                    chunks = fname.split('.')
                    songlist.append(entry + ";" + urllib.unquote(chunks[0]) + ";" + string.split(urllib.unquote(chunks[1]),'\\')[0])
    return songlist
    

songArtistNames = []
notFoundNum = 0

outFolder = ""

if DEBUG == False:
    ## args: <root_folder> <out_folder>
    outFolder = sys.argv[2]
    songArtistNames = buildSongList(sys.argv[1], outFolder)

else:
    outFolder = '/Users/MoritzGellner/Documents/EECS349Project/lyrics'
    songArtistNames = buildSongList('/Users/MoritzGellner/Downloads/genres',outFolder)

for sn in songArtistNames:
    # [genre, artist, song]
    print "SN = " + sn
    chunks = sn.split(';')
    print chunks
    queryStr = "http://" + urllib.quote("api.chartlyrics.com/apiv1.asmx/SearchLyric?artist=" + chunks[1] + "&song=" + chunks[2],'?/&=')
    print queryStr
    xmlString = getXmlData(queryStr)
    xmlObj = ET.fromstring(xmlString)
    
    found = False
    for child in xmlObj:
        LyricChecksum = None
        LyricId = None
        
        for c in child:
            if c.tag == "{http://api.chartlyrics.com/}LyricChecksum":
                # print "=== Found Lyric Checksum"
                print c.text
                LyricChecksum = c.text
            elif c.tag == "{http://api.chartlyrics.com/}LyricId":
                # print "=== Found Lyric ID"
                LyricId = c.text
                break
        if LyricChecksum and LyricId:
            print "Getting Lyric Text"
            ltext = getLyricText(LyricId,LyricChecksum)
            folder = chunks[0]
            
            f = open(outFolder + '/' + folder + "/" + str(LyricChecksum) + "." + str(LyricId),'w')
            f.write(ltext)
            f.close()
            found = True
            break

    if found == False:
        notFoundNum += 1
        
print "Could not find " + notFoundNum + " artists"
    

# build the query string
