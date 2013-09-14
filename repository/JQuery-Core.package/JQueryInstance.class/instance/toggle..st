effects
toggle: anObject
	"Bind two or more handlers to the matched elements, to be executed on alternate clicks."
	
	(anObject isCollection and: [ anObject isString not ])
		ifTrue: [ self call: 'toggle' withArguments: (anObject collect: [ :each | each asFunction ]) ]
		ifFalse: [ self call: 'toggle' with: anObject ]