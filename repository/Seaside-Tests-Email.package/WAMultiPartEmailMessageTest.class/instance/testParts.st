as yet unclassified
testParts
	| parts |
	message setHtmlBody: [ :h | h paragraph: 'hello' ].
	parts := message parts asArray sort.
	self assert: parts size equals: 2.
	self assert: parts last isHtml.
	self assert: parts first contentString equals: 'Hello'.
	self assert: parts last contentString equals:'<html><head><title></title></head><body onload="onLoad()"><p>hello</p><script type="text/javascript">/*<![CDATA[*/function onLoad(){};/*]]>*/</script></body></html>'