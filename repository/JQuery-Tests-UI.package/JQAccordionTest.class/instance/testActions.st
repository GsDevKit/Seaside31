tests
testActions
	self
		assert: ((self jQuery: 'img') accordion activate: 3)
		equals: self function , '("img").accordion("activate",3)'