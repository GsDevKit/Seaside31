private
asSelector: aFilename
	| mainPart extension |
	mainPart := (aFilename copyUpToLast: $.)
		select: [ :each | each isAlphaNumeric ].
	[ mainPart first isDigit ]
		whileTrue: [ mainPart := mainPart allButFirst ].
	extension := (aFilename copyAfterLast: $.) asLowercase capitalized.
	^ (mainPart, extension) asSymbol