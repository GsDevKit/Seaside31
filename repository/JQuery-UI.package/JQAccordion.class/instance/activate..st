actions
activate: anInteger
	"Activate a content part of the Accordion programmatically."
	
	self action: 'activate' arguments: (Array with: anInteger)