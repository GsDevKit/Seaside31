*seaside-tests-internetexplorer
testIMeanIt
	self response iMeanIt.
	self assert: (self response headerAt: 'X-Content-Type-Options') = 'nosniff'.
	self assert: (self response headers size) = 1