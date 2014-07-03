*seaside-gemstone-core
seasideProcessRequest: aNativeRequest adaptor: adaptor resultBlock: resultBlock
	
	| result |
	[ | retryCount result count |
		retryCount := self retryCount.
		count := 1.
		retryCount timesRepeat: [
			(result := self
				seasideProcessRequestWithRetry: aNativeRequest 
				resultBlock: resultBlock) ~~ nil
					ifTrue: [ ^result ].
				System _sessionCacheStatAt: 2 put: ((System _sessionCacheStatAt: 2) + 1). "requests retried"
				(Delay forMilliseconds: self retryDelay * count) wait.
				count := count * 10 ].
		"exceeded retry limit"
		^adaptor internalServerErrorMessage: 'Too many retries: ', (retryCount+1) printString ] 
			on: Error 
			do: [:ex |
				self doAbortTransaction.
				result := adaptor internalServerErrorMessage: ex description.
				"Do an explicit return. Because of the abort above, the default action for an exception (resume) is set. see bug39246."
				ex return: nil ].
	^result