private
findIcon: aSymbol
	(self canUnderstand: aSymbol)
		ifTrue: [ ^ self default perform: aSymbol ].
	^ UITheme current
		iconNamed: ('small' , aSymbol capitalized) asSymbol
		ifNone: [ UITheme current iconNamed: aSymbol ]