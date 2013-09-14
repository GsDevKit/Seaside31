actions
add: aUrl label: aString at: anInteger
	"Add a new tab. The second argument is either a URL consisting of a fragment identifier only to create an in-page tab or a full url (relative or absolute, no cross-domain support) to turn the new tab into an Ajax (remote) tab. The third is the zero-based position where to insert the new tab. Optional, by default a new tab is appended at the end."
	
	self action: 'add' arguments: (Array with: aUrl with: aString with: anInteger)