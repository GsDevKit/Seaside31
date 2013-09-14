actions
addContinuation

	continuation == nil ifTrue:[ ^self ].
	logEntry := WAObjectLogEntry 
		error: exception description 
		request: self session currentRequest 
		continuation: continuation.
	self applicationDeployed
		ifTrue: [
			"when in deployment mode, the logEntry is not resumable"
			logEntry resumeContinuation].
	logEntry addToLog.
	continuation := nil.