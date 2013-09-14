actions
select: anInteger
	"Select a tab, as if it were clicked. The second argument is the zero-based index of the tab to be selected or the id selector of the panel the tab is associated with (the tab's href fragment identifier, e.g. hash, points to the panel's id)."
	
	self action: 'select' arguments: (Array with: anInteger)