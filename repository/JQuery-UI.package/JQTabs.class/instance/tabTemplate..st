options-generated
tabTemplate: aString
	"HTML template from which a new tab is created and added. The placeholders #&#123;href&#125; and #&#123;label&#125; are replaced with the url and tab label that are passed as arguments to the add method."

	self optionAt: 'tabTemplate' put: aString