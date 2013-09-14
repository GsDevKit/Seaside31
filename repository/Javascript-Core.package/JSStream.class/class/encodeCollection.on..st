encoding
encodeCollection: aCollection on: aStream
	"Writes aCollection of elements to aStream enclosed in square brakets."
	
	aStream nextPut: $[.
	aCollection
		do: [ :each | aStream javascript: each ]
		separatedBy: [ aStream nextPut: $, ].
	aStream nextPut: $]