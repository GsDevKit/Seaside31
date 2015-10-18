tests
testExceptionHandlerNesting
	| continuation handler |
	continuation := WARenderLoopContinuation new.
	handler := WASignalingErrorHandler new.
	self 
		should: [
				handler handleExceptionsDuring: [
					WAError signal: 'Testing 1, 2, 3' ] ]
		raise: WARenderNotification.
		
	self
		shouldnt:  [
			handler handleExceptionsDuring: [
				WACurrentExceptionHandler
					use: handler
					during: [continuation withNotificationHandlerDo: [
						WAError signal: 'Testing 1, 2, 3' ] ] ] ]
		raise: WARenderNotification