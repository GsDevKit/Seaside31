testing requests
testRetryRequest
	| numberOfRetries start end |
	numberOfRetries := 0.
	
	GRPlatform current 
		seasideProcessRequest: nil 
		adaptor: WATestServerAdaptor new 
		resultBlock: [:result | numberOfRetries := numberOfRetries + 1. numberOfRetries =2 ifTrue:[#foobar] ifFalse:[nil] ].
	
	self assert: numberOfRetries = 2.
	
	numberOfRetries := 0.
	start := DateAndTime now.
	
	GRPlatform current 
		seasideProcessRequest: nil 
		adaptor: WATestServerAdaptor new 
		resultBlock: [:result | numberOfRetries := numberOfRetries + 1. nil ].
	end :=  DateAndTime now.
	
	self assert: numberOfRetries = GRPlatform current retryDelays size.
	self assert: (end - start) asSeconds * 1000 >= (GRPlatform current retryDelays inject: 0 into:[:t :i | t + i ])