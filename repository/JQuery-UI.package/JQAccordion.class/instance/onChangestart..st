events-generated
onChangestart: anObject
	"This event is triggered every time the accordion starts to change. $('.ui-accordion').bind('accordionchangestart', function(event, ui) { ui.newHeader // jQuery object, activated header ui.oldHeader // jQuery object, previous header ui.newContent // jQuery object, activated content ui.oldContent // jQuery object, previous content });"

	self optionAt: 'changestart' put: anObject asFunction