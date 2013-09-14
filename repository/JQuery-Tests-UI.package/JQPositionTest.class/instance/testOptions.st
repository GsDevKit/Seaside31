tests
testOptions
	self
		assert: ((self jQuery: 'div') positioned at: 'right')
		equals: self function , '("div").position({"at":"right"})'.
	self
		assert: ((self jQuery: 'div') positioned bgiframe: false)
		equals: self function , '("div").position({"bgiframe":false})'.
	self
		assert: ((self jQuery: 'div') positioned collision: 'flip fit')
		equals: self function , '("div").position({"collision":"flip fit"})'.
	self
		assert: ((self jQuery: 'div') positioned my: 'top center')
		equals: self function , '("div").position({"my":"top center"})'.
	self
		assert: ((self jQuery: 'div') positioned of: '#id')
		equals: self function , '("div").position({"of":"#id"})'.
	self
		assert: ((self jQuery: 'div') positioned offset: '10 20')
		equals: self function , '("div").position({"offset":"10 20"})'