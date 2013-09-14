writing
writeHeadersOn: aStream 
	self 
		headerAt: 'Content-Length'
		put: contentsStream size.
	super writeHeadersOn: aStream