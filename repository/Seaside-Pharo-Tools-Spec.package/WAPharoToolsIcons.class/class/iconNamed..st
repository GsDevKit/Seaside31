accessing
iconNamed: aSymbol
	^ Icons at: aSymbol ifAbsentPut: [ self findIcon: aSymbol ]