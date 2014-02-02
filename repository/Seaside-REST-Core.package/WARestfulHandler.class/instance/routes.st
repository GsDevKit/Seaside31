accessing
routes
	"Answer a collection of routes for the receiver."

	^ routes ifNil: [ 
		self shouldCacheRoutes
			ifFalse: [ self createRoutes ]
			ifTrue: [ routes := self createRoutes ] ]