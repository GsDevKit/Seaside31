tests-events
testLive
	self
		assert: ((self jQuery: 'a') live: 'click' do: (self javascript alert: 'Clicked'))
		equals: self function , '("a").live("click",function(){alert("Clicked")})'