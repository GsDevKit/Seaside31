*jquery-json
callback: aBlock json: anObject
	"Register aBlock as a secondary callback. anObject is a reference to a Javascript object on the client-side. anObject will be serialized to a JSON string, sent back to the server, deserialized from JSON to nested Smalltalk objects, and result passed into aBlock.
	
	Note: The serialization of Javascript objects to JSON requires a modern web browser with native JSON support or the JSJsonDeploymentLibrary to be loaded. Objects that recursively refer to themselves and objects that contain or objects that contain methods might not be serializable and cause the web browser to loop inifinitely or throw an exception."

	self
		callback: [ :value | aBlock value: (WAJsonParser parse: value) ] 
		value: (JSJson new stringify: anObject)