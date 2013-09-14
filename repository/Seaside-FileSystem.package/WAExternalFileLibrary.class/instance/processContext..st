handling
processContext: aRequestContext
	| filename |
	filename := self filenameForConsumer: aRequestContext consumer.
	(self listing and: [ filename isDirectory ])
		ifTrue: [ self
				processDirectory: filename asString "#asString on SPFilename"
				context: aRequestContext ]
		ifFalse: [ self processFile: filename context: aRequestContext ]