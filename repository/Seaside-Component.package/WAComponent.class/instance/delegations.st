accessing
delegations
	"Answer an ordered colleciton of all delections active in the receiver."
	
	^ self decorations select: [ :each | each isDelegation ]