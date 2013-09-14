*seaside-gemStone-tools-production
inspectorFields
	| members |
	members := Array new writeStream.
	self class allInstVarNames withIndexDo: [ :each :index |
		members nextPut: each -> (self instVarAt: index) ].
	self class isVariable ifTrue: [
		1 to: self size do: [ :index |
			members nextPut: index -> (self at: index) ] ].
	^ members contents