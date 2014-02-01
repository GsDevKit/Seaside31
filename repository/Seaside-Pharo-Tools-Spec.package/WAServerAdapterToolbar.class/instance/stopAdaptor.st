actions
stopAdaptor

	self owner adaptor ifNotNilDo: [ :adaptor |
		adaptor stop ]