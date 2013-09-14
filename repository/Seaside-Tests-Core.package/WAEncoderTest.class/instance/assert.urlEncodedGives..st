private
assert: aString urlEncodedGives: anEncodedString
	| actual |
	actual := String streamContents: [ :stream |
		(GRPharoPlatform current urlEncoderOn: stream codec: self requestContext codec) nextPutAll: aString ].
	self assert: actual = anEncodedString