starting/stopping
start
	"blocks main thread, does not return"
	super start.
	[true] whileTrue: [ (Delay forSeconds: 10) wait ].