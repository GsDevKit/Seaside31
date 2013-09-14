private
assert: aString xmlEncodedGives: anEncodedString
	| actual |
	actual := String streamContents: [ :stream |
		(GRPharoPlatform current xmlEncoderOn: stream) nextPutAll: aString ].
	self assert: actual = anEncodedString