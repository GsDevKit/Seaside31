printing
printValue: aString on: aStream
	aStream
		nextPutAll: self name;
		nextPutAll: ': '.
	aStream nextPutAll: aString