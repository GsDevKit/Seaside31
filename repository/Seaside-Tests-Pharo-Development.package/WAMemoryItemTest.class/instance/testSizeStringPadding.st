testing
testSizeStringPadding
	"'aa' sizeInMemory answers 6 but should be 8 because of alligment.
	If someone fixes this, I think #sizeInMemory would be correct."
	self assert: (item sizeOfObject: 'aa') = 8