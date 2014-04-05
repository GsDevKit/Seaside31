private
match: aString
	"Tries to match aString, consume input and answer true if successful."
	
	| position |
	self whitespace.
	position := stream position.
	aString do: [ :each |
		(stream atEnd or: [ stream next ~= each ]) ifTrue: [ 
			"reset position"
			stream position: position.
			^ false ] ].
	^ true