events-generated
onSelect: anObject
	"This event is triggered when clicking a tab."

	self optionAt: 'select' put: anObject asFunction