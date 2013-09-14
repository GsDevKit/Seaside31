tests
testAsSelector
	self assert: (WAFileLibrary asSelector: 'main.css') = #mainCss.
	self assert: (WAFileLibrary asSelector: 'main.js') = #mainJs.
	self assert: (WAFileLibrary asSelector: 'style-2.css') = #style2Css.
	self assert: (WAFileLibrary asSelector: 'style_2.css') = #style2Css