events-generated
onEnable: anObject
	"This event is triggered when a tab is enabled."

	self optionAt: 'enable' put: anObject asFunction