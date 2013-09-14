convenience-caching
doNotCache
	"Configure the receiver to not be cached at all."
	
	self headerAt: 'Pragma' put: 'no-cache'. "Proxies"
	self headerAt: 'Expires' putDate: self doNotCacheExpiryDate. "HTTP 1.0"
	self headerAt: 'Cache-Control' put: 'no-cache, must-revalidate' "HTTP 1.1"