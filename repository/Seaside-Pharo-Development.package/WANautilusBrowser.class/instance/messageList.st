accessing
messageList
	^ (selectedMessageCategory isNil
		ifTrue: [
			self selectedClass isNil
				ifTrue: [ #() ]
				ifFalse: [ self selectedClass selectors ] ]
		ifFalse: [
			self selectedClass organization protocolOrganizer methodsInProtocolNamed: selectedMessageCategory ]) sorted