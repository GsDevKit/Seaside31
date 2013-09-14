actions
remove: anInteger
	"Remove a tab. The second argument is the zero-based index of the tab to be removed."
	
	self action: 'remove' arguments: (Array with: anInteger)