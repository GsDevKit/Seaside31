tests-events
testDie
	self
		assert: ((self jQuery: 'a') die: 'click')
		equals: self function , '("a").die("click")'