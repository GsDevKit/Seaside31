actions
rotate: aDuration continuing: aBoolean
	"Set up an automatic rotation through tabs of a tab pane.  The second argument is an amount of time in milliseconds until the next tab in the cycle gets activated. Use 0 or null to stop the rotation.  The third controls whether or not to continue the rotation after a tab has been selected by a user."
	
	self action: 'rotate' arguments: (Array with: aDuration with: aBoolean)