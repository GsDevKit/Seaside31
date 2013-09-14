accessing
directory
	| path filename |
	path := self preferenceAt: #directory.
	filename := SpFilename named: path.
	"hack around SPort bugs"
	^(path last = filename separator)
		ifTrue: [ SpFilename named: path allButLast ]
		ifFalse: [ filename ]