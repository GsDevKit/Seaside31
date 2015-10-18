instance creation
named: aString on: aHandler
	^ self new
		name: aString;
		initializeWithHandler: aHandler;
		yourself