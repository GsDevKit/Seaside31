events-generated
onChange: anObject
	"This event is triggered every time the accordion changes. If the accordion is animated, the event will be triggered upon completion of the animation; otherwise, it is triggered immediately. $('.ui-accordion').bind('accordionchange', function(event, ui) { ui.newHeader // jQuery object, activated header ui.oldHeader // jQuery object, previous header ui.newContent // jQuery object, activated content ui.oldContent // jQuery object, previous content });"

	self optionAt: 'change' put: anObject asFunction