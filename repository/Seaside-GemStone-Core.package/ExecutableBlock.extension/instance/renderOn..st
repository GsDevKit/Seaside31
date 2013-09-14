*Seaside-GemStone-Core
renderOn: aRenderer
	numberArgs == 0 
		ifTrue: [self value]
		ifFalse: [self value: aRenderer]