tests-chaining
testAndSelf
	self
		assert: ((self jQuery: 'div') find: 'p'; andSelf; addClass: 'border')
		equals: self function , '("div").find("p").andSelf().addClass("border")'