events
live: aString do: anObject 
	"Attach a handler to the event for all elements which match the current selector, now or in the future."
	
	self call: 'live' with: aString with: anObject asFunction