actions
addAdaptor
	|allAdaptors class port |
	allAdaptors := self adaptorClasses.
	class := UIManager default
		chooseFrom: (allAdaptors collect: [:e | e name])
		values: allAdaptors
		lines: #()
		title: 'Add Seaside Adaptor' translated.
	port := UIManager default
		request: 'Enter a port number' 
		initialAnswer: class basicNew defaultPort greaseString.
	(port isNil or: [ port isEmpty or: [ port isAllDigits not ] ]) ifTrue: [ ^ self ].
	adaptor := class port: port greaseInteger.
	self initializeAdaptors