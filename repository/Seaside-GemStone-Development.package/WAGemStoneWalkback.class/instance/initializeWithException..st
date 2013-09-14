initialization
initializeWithException: anException
	| context |
	super initializeWithException: anException.
	context := self currentContextForWalkback.
	frames := OrderedCollection new.
	[ context isNil ] whileFalse: [
		frames add: context.
		context := context sender ].
	limit := 5 min: frames size