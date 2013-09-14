breakpoints
breakPointLocations

	^{ 
		{ #WAHtmlErrorHandler. #handleDefault:. #yourself }.
		{ #WAEmailErrorHandler. #handleDefault:. #yourself }.
		{ #WAResponseGenerator. #internalError:. #yourself }.
		"FastCGI"
		{ #WAFastCGIAdaptor. #internalServerMalfunction:. #yourself }.
		{ #WAFastCGIAdaptor. #internalServerErrorMessage:. #yourself }.
		"Swazoo"
		{ #HTTPResponse. #notFound. #class }.
		{ #WAGsSwazooAdaptor. #internalServerErrorMessage:. #yourself }.
	}