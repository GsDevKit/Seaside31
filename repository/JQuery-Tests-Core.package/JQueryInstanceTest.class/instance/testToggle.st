tests-events
testToggle
	self
		assert: ((self jQuery: 'a') toggle: (1 to: 3))
		equals: self function , '("a").toggle(function(){1},function(){2},function(){3})'