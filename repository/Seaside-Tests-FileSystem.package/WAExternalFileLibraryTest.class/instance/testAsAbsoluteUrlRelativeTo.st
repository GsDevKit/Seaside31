testing
testAsAbsoluteUrlRelativeTo
	| request |
  Transcript
    cr;
    show: 'WAExternalFileLibraryTest>>testAsAbsoluteUrlRelativeTo [0]'.
	fileSystem configuration 
		at: #directory
		put: '/home/philppe/pr0n'.
	request := self requestWithUrl: '/culture/pictures'.
	self assert: (fileSystem 
			asAbsoluteUrl: 'cleopatra.jpeg'
			relativeTo: request) greaseString = '/culture/pictures/cleopatra.jpeg'.
	request := self requestWithUrl: '/culture/pictures/'.
	self assert: (fileSystem 
			asAbsoluteUrl: 'cleopatra.jpeg'
			relativeTo: request) greaseString = '/culture/pictures/cleopatra.jpeg'.
  Transcript
    cr;
    show: 'WAExternalFileLibraryTest>>testAsAbsoluteUrlRelativeTo [1]'.