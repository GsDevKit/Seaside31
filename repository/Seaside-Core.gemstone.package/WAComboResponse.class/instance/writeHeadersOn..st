writing
writeHeadersOn: aStream
	self isChunked ifFalse: [
		self 
		headerAt: 'Content-Length'
		put: bufferedStream size ].
	super writeHeadersOn: aStream