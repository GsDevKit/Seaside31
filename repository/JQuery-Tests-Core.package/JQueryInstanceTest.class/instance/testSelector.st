tests-accessors
testSelector
	self
		assert: ((self jQuery: 'div') selector)
		equals: self function , '("div").selector'