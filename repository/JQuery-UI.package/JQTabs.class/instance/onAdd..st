events-generated
onAdd: anObject
	"This event is triggered when a tab is added."

	self optionAt: 'add' put: anObject asFunction