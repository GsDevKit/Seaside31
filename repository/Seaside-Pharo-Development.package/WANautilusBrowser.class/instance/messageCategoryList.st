accessing
messageCategoryList
	| categories unclassified |
	self selectedClass isNil
		ifTrue: [ ^ Array with: (Smalltalk at: #AllProtocol) defaultName ].
	categories := self selectedClass organization categories.
	unclassified := (Smalltalk at: #Protocol) unclassified.
	^ (categories includes: unclassified)
		ifTrue: [
			"'-- all --', 'as yet unclassified', rest sorted alphabetically"
			(Array
				with: categories first
				with: unclassified),
			(categories allButFirst copyWithout: unclassified) sorted ]
		ifFalse: [
			"'-- all --', rest sorted alphabetically"
			(Array with: categories first),
			categories allButFirst sorted ]