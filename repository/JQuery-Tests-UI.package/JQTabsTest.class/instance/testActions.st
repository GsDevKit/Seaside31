tests
testActions
	self
		assert: ((self jQuery: 'ul') tabs add: '#foo' label: 'Foo')
		equals: self function , '("ul").tabs("add","#foo","Foo")'.
	self
		assert: ((self jQuery: 'ul') tabs add: '#foo' label: 'Foo' at: 1)
		equals: self function , '("ul").tabs("add","#foo","Foo",1)'.
	self
		assert: ((self jQuery: 'ul') tabs disable: 2)
		equals: self function , '("ul").tabs("disable",2)'.
	self
		assert: ((self jQuery: 'ul') tabs enable: 3)
		equals: self function , '("ul").tabs("enable",3)'.
	self
		assert: ((self jQuery: 'ul') tabs select: 4)
		equals: self function , '("ul").tabs("select",4)'.
	self
		assert: ((self jQuery: 'ul') tabs load: 5)
		equals: self function , '("ul").tabs("load",5)'.
	self
		assert: ((self jQuery: 'ul') tabs length)
		equals: self function , '("ul").tabs("length")'.
	self
		assert: ((self jQuery: 'ul') tabs rotate: 1 seconds)
		equals: self function , '("ul").tabs("rotate",1000)'.
	self
		assert: ((self jQuery: 'ul') tabs rotate: 1 seconds continuing: true)
		equals: self function , '("ul").tabs("rotate",1000,true)'