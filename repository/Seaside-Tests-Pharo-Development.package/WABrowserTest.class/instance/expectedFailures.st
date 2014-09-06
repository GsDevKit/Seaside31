running
expectedFailures
	^ [ SystemVersion current major < 3 ifTrue:[ #(testContentsNotifying) ] ifFalse:[ #() ]
		] on: Error do:[:e | #() ]