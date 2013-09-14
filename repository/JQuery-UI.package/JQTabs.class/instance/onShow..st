events-generated
onShow: anObject
	"This event is triggered when a tab is shown."

	self optionAt: 'show' put: anObject asFunction