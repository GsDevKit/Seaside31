accessing-packages
allDirtyPackages
	"Answer all dirty Seaside related packages."
	
	^ self allPackages select: [ :each | (self workingCopyFor: each) modified ]