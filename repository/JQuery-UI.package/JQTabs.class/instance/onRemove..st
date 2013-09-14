events-generated
onRemove: anObject
	"This event is triggered when a tab is removed."

	self optionAt: 'remove' put: anObject asFunction