events-generated
onDisable: anObject
	"This event is triggered when a tab is disabled."

	self optionAt: 'disable' put: anObject asFunction