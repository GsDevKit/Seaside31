instance creation
string: aString
	^ self new
		string: (self convertCrLfToCrIn: aString);
		yourself