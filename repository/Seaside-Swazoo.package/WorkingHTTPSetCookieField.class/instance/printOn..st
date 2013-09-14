printing
printOn: aStream
	self cookies
		do: [ :each | self printValue: each on: aStream ]
		separatedBy: [ self crlfOn: aStream ]