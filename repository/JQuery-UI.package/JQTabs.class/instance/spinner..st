options-generated
spinner: aString
	"The HTML content of this string is shown in a tab title while remote content is loading. Pass in empty string to deactivate that behavior. An span element must be present in the A tag of the title, for the spinner content to be visible."

	self optionAt: 'spinner' put: aString