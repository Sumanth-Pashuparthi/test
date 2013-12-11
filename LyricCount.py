import os
from string import punctuation

MUSIC_DIRECTORY = 'lyrics'
TEST_DIRECTORY = 'ZZZTestFiles'

###########################################################################
# Move files to a temporary testing directory for validation
############################################################################
def moveFiles():
	print "Moving files for testing...\n"
	NUMBER_OF_FOLDS = 10

	# Initialize variables
	os.chdir(MUSIC_DIRECTORY)
	dir = os.getcwd()
	genreDirectories = os.listdir(dir)
	totalFileCount = 0
	fileCounts = []

	if not os.path.exists(TEST_DIRECTORY):
		os.mkdir(TEST_DIRECTORY)

	# Get all file counts
	for genreDirectory in genreDirectories:
		if genreDirectory[0] != '.' and genreDirectory != TEST_DIRECTORY:
			files = os.listdir(os.getcwd() + '/' + genreDirectory)
			# for i in xrange(len(files)/NUMBER_OF_FOLDS):
			i = 0
			filesToMove = 5
			while i < filesToMove:
				if files[i][0] == '.':
					i += 1
					filesToMove += 1
				os.rename(genreDirectory + '/' + files[i], TEST_DIRECTORY + '/' + genreDirectory+'_'+files[i])
				i += 1
	os.chdir('..')

def getAverages():
	os.chdir(MUSIC_DIRECTORY)
	genreDirectories = os.listdir(os.getcwd())
	averages = []

	for genreDirectory in genreDirectories:
		if genreDirectory[0] != '.' and genreDirectory != TEST_DIRECTORY:
			curSum = 0
			curFileTotal = 0
			for file in os.listdir(genreDirectory):
				if file[0] != '.':
					curSum += getFileWordCount(genreDirectory + "/" + file)
					curFileTotal += 1
			averages.append(float(curSum)/curFileTotal)

	os.chdir('..')
	return averages


def getFileWordCount(filepath):
	file = open(filepath, 'r')
	content = file.read()
	file.close()

	words = [word.strip(punctuation) for word in content.split()]

	return len(words)

def validate(avgs):
	os.chdir(MUSIC_DIRECTORY + '/' + TEST_DIRECTORY)
	files = os.listdir(os.getcwd())
	for testFile in files:
		wordCount = getFileWordCount(testFile)
		closestAverage = min(avgs, key=lambda x:abs(x-wordCount))
		genres = os.listdir('..')
		index = avgs.index(closestAverage)
		if genres[0][0] == '.':
			index += 1
		print "I would classify " + testFile + " as " + genres[index]

	os.chdir('../..')

def moveFilesBack():
	os.chdir(MUSIC_DIRECTORY + '/' + TEST_DIRECTORY)
	testFiles = os.listdir(os.getcwd())
	for file in testFiles:
		if file[0] != '.':
			parts = file.split('_')
			os.rename(file, '../' + parts[0] + '/' + parts[1])

	os.chdir('../..')


# Main
moveFiles()
avgs = getAverages()
print avgs
validate(avgs)
moveFilesBack()